#!/bin/bash

main() {
  VOTE="${1}"
  if [ "${VOTE}" = "space" ]; then
    printf "" > keys.txt
    osascript -e 'tell application "System Events" to key code 49'
    return 0
  fi

  echo "${VOTE}" >> keys.txt
  if [ "$(wc -l keys.txt | cut -d ' ' -f 1)" -ge 3 ]; then
    KEY="$(
      cat keys.txt \
        | sort \
        | uniq -c \
        | sort -n \
        | tail -n 1 \
        | sed 's/  */ /g' \
        | sed 's/^ *//g' \
        | cut -d ' ' -f 2
    )"
    printf "" > keys.txt
    osascript -e 'tell application "System Events" to keystroke "'"${KEY}"'"'
  fi
}

main "$@"
echo "Voted for ${1}"
