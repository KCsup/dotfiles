#!/bin/bash
P=$(echo $(acpi -b) | cut -d "," -f 2 | cut -c 2- | tr -d ,)
S=$(echo $(acpi -b) | cut -d "," -f 1 | cut -d ":" -f 2 | cut -c 2- | tr -d ,)
echo "$P ($S)"
