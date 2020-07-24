download_youtube () {
  youtube-dl -f 137 $1 -o "$2.mp4"
  youtube-dl -f 140 $1 -o "$2.m4a"
  ffmpeg -i "$2.mp4" -i "$2.m4a" -c:v copy -c:a aac "$2-output.mp4"
}

download_youtube https://www.youtube.com/watch?v=3q0OeaGleBA rock
download_youtube https://www.youtube.com/watch?v=czN_Zewi_9Q paper
download_youtube https://www.youtube.com/watch?v=3Y7psFw4r7w scissors
