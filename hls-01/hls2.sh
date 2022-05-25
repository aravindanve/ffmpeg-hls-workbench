ffmpeg -i in.mp4 \
 -c:v libx264 -c:a libfdk_aac \
 -flags +cgop -g 300 -hls_time 3 \
 -force_key_frames expr:'gte(t,n_forced*3)' \
 chunks/out.m3u8
