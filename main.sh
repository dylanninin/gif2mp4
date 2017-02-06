#!/bin/sh

/bin/shell2http \
  -port=9100 \
  -form \
  /handler 'mp4=/tmp/$(date +%s${RANDOM}).mp4 && ffmpeg -loglevel error -i ${v_url} -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -y ${mp4} && cat ${mp4}' \
  /cleanup 'find /tmp -name "*.mp4" -mmin +59 -delete' \
  /health 'echo ok'
