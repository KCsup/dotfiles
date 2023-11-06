#!/bin/bash

ACPI_OUT=$(acpi -b)

P=""
S=""

if [[ $ACPI_OUT == *"Not charging"* ]]; then
  P=$(echo $(acpi -b) | cut -d "," -f 2 | tr -d " ")
  S=$(echo $(acpi -b) | cut -d "," -f 1 | cut -d ":" -f 2 | tr -d " ")
else
  P=$(echo $(acpi -b) | cut -d "," -f 2 | cut -c 2- | tr -d ,)
  S=$(echo $(acpi -b) | cut -d "," -f 1 | cut -d ":" -f 2 | cut -c 2- | tr -d ,)
fi


if [ $S = "Charging" ]; then
  echo "$P ($S)"
else
  echo "$P"
fi
