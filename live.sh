# ffmpeg -threads 2 -re -fflags +genpts -stream_loop -1 -i $1 \
# -s 640x360 -ac 2 -f flv -vcodec libx264 -profile:v baseline -b:v 600k -maxrate 600k -bufsize 600k -r 24 -ar 44100 -g 48 -c:a libfdk_aac -b:a 64k "rtmp://publish.live.metacdn.com/2050C7/dfsdfsd/lowquality_664?hello&adbe-live-event=lowquality_" \
# -s 1920x1080 -ac 2 -f flv -vcodec libx264 -profile:v baseline -b:v 2000k -maxrate 2000k -bufsize 2000k -r 24 -ar 44100 -g 48 -c:a libfdk_aac -b:a 64k "rtmp://publish.live.metacdn.com/2050C7/dfsdfsd/highquality_2064?mate&adbe-live-event=highquality_"

