#!/usr/bin/env zsh

nvidia-smi --query-gpu=utilization.gpu,memory.used,memory.total --format=csv,noheader,nounits | sed "s/,//g" | awk '{ print "GPU",""$1"%","("$2"MB/"$3"MB)"}'
