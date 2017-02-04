A gif2mp4 service based on [FFmpeg](https://ffmpeg.org/).

Started
========

- pull: `docker pull dylanninin/gif2mp4`
- run: `docker run -p 9100:9100 dylanninin/gif2mp4`
- request:
  - source gif: `wget http://bit.ly/2iP176E -qO demo.gif`
  - lossy compressed: `wget http://localhost:9100/handler?url=http://bit.ly/2iP176E -qO demo.mp4`
  - diff

    ```shell
    ls -hl *.gif
    -rw-r- r-   1 dylanninin  staff    10M Jan  8 10:37 demo.gif
    -rw-r- r-   1 dylanninin  staff   930K Feb  8 11:04 demo.mp4
    ```

Build from scratch
========

- build: `rocker build`

Reference
========

- https://github.com/msoap/shell2http
- https://github.com/grammarly/rocker
- http://rigor.com/blog/2015/12/optimizing-animated-gifs-with-html5-video
- http://developer.qiniu.com/article/dora/ufop/v2/ufop-fast.html
- http://developer.qiniu.com/article/dora/ufop/v2/qdoractl.html#apply
