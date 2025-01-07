#!/bin/bash

# Requires there to be <input_name>.mp3 and <input_name>.png in the same directory
# Use like this: ./make_video.sh <input_name>
# This will create a video named <input_name>.mp4

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_name>"
    exit 1
fi

input_name=$1
input_png="${input_name}.png"
input_mp3="${input_name}.mp3"

# Check if the required .png and .mp3 files exist in the current directory
if [ ! -f "$input_png" ]; then
    echo "Error: $input_png not found"
    exit 1
fi

if [ ! -f "$input_mp3" ]; then
    echo "Error: $input_mp3 not found"
    exit 1
fi

# Resize the input image to ensure width is divisible by 2
ffmpeg -i "${input_png}" -vf scale=1180:2556 "${input_name}_resized.png"

# Run ffmpeg command to encode the video
ffmpeg -y -i "${input_mp3}" -loop 1 -i "${input_name}_resized.png" -filter_complex "[0:a]showwaves=s=1180x2556:mode=line:rate=25:colors=white,format=yuva420p[waves];[waves]gblur=sigma=5[smoothedwaves];[smoothedwaves]colorchannelmixer=aa=0.4[transparentwaves];[1:v][transparentwaves]overlay[outv]" -map "[outv]" -map 0:a -pix_fmt yuv420p -c:v libx264 -c:a aac -shortest "${input_name}.mp4"

# Clean up temporary file
rm "${input_name}_resized.png"
