# Y/N

This is a tiny application built to allow several friends to vote on decisions
made in the little game ["Sort the
Court"](https://graebor.itch.io/sort-the-court). 

It runs using [Quickserv](https://github.com/jstrieb/quickserv), and expects
the back end to be run on macOS with the game window in-focus. 

To run the application, do the following command from the repo root.

``` bash
quickserv
```

Then, connect to the local IP over the LAN to vote as a group.

To change the number of voters (from the default of 3), the `key.sh` script
should be edited directly.

This one-off project is not being maintained or supported.
