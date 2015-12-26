# battery

Prints the battery charge percentage based on the output of
`/sys/class/power_supply/BAT1/charge_now` and `charge_full`.

It has no options, and no arguments.

## installation

I recommend using stack. Clone the repository, `cd` into its directory, and
run `stack install`. If the installation directory is in your PATH, the
`battery` command should be available after stack is done building it.

