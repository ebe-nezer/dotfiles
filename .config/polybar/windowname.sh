#! /bin/bash

FOCUSED_WINDOW=$(xdotool getwindowfocus)
FOCUSED_WINDOW_NAME=$(xdotool getwindowname ${FOCUSED_WINDOW})
WINDOW_NAME=i3
if [[ $FOCUSED_WINDOW_NAME == $WINDOW_NAME ]]
then
  echo ""
  exit 1
else
  ACT_WINDOW_NAME=$(xdotool getwindowclassname `xdotool getactivewindow`)
   echo $ACT_WINDOW_NAME
fi

