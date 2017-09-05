ffmpeg -i input_video.mp4 -ss 30 -t 10 -c copy cropped.mp4
convert -depth 8 -resize 50% -background none plate.svg plate.png
ffmpeg -i cropped.mp4 -i plate.png -c:a copy -filter_complex 'overlay=0:446:enable=between(t\,1\,9)' plated.mp4
ffmpeg -i plated.mp4 -vf drawtext="text='I am learning computer graphics!': fontfile=Arial.ttf: fontcolor=black: fontsize=24: x=200: y=476" -c:a copy result.mp4