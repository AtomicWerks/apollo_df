#!/bin/env bash
echo -en "%{A:pavucontrol:}\uf025 $(awk -F'[][]' '{ print $2 }' <(amixer sget Master) | tail -n 1)"
echo "%{A}"
