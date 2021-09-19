PRESET="ultrafast" # ultrafast, superfast, veryfast, faster, fast, medium, slow, slower, veryslow, placebo
SOURCE="/storage/emulated/0/Download/cb.mp4"
YOUTUBE_URL="rtmp://in.push.booyah.live/live"
KEY="34884818?token=126a8a59661513ac25b2e0af24e2c046f3acaab8256074ee19cee030" # Your youtube key. (https://www.youtube.com/live_dashboard > encoder config > name/key)

ffmpeg \
    -re -i "$SOURCE" -vcodec libx264 -preset $PRESET -maxrate 3000k -b:v 2500k \
    -bufsize 600k -pix_fmt yuv420p -g 60 -c:a aac -b:a 160k -ac 2 \
    -ar 44100 -f flv -s 1280x720 "$YOUTUBE_URL/$KEY"
