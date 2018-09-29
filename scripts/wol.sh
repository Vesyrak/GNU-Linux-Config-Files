#!/bin/bash
for f in ./scripts/core/*; do source $f; done


function wolArch()
{
    print "Installing WoL"
    pacaur -S wol-systemd
    todo  "Enabling WoL is not yet implemented"

}

function wolUbuntu() {
  todo  "WoL is not yet implemented"
}

while getopts "ua" opt; do
  case $opt in
    a)
      wolArch
      ;;
    u)
      wolUbuntu
      ;;
    \?)
      print "Invalid option: -$OPTARG" >&2
      ;;
  esac
done