#ffmpeg -i in.mp4 -map 0 \
# -codec:v libx264 -codec:a libfdk_aac \
# -f ssegment -segment_list out.list \
# chunks/out%03d.ts

#ffmpeg -i in.mp4 -map 0 \
# -codec:v libx264 -codec:a libfdk_aac \
# -f ssegment -segment_list playlist.m3u8 \
# -segment_list_flags +live -segment_time 10 \
# chunks/out%03d.ts

ffmpeg -i in.mp4 -map 0 \
 -codec:v libx264 -codec:a libfdk_aac \
 -f ssegment -segment_list chunks/playlist.m3u8 \
 -segment_list_flags +live -segment_time 4 \
 chunks/out%03d.ts
