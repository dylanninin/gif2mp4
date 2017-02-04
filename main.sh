#!/bin/sh

/bin/shell2http \
  -port=9100 \
  -form \
  /handler 'ffmpeg -loglevel error -i $v_url -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -y /app/0.mp4; cat /app/0.mp4' \
  /health 'echo ok'
