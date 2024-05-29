# insta-ffmpeg

## About

I've been learning electric bass and recording some scratch tracks for fun.

I enjoy sharing my progress on Instagram stories, and want an easy way to take an mp3 recording and turn it into a video.

Working with `gpt-4o` via [clix](https://github.com/dgurns/clix) I've been iterating on `ffmpeg` commands which I can run locally in my terminal.

Here's my current flow:

- [Fender Squier Mini Precision Bass](https://www.amazon.com/Squier-Fender-Mini-Precision-Bass/dp/B088FXNS5S)
  - Cheap but great sound and super fun to play
- [Mustang Micro Headphone Amp](https://www.amazon.com/Fender-2311300000-Mustang-Micro/dp/B08TRQS1TX?th=1)
  - Can hear myself play via headphones
  - Pipe in music from my phone via Bluetooth
  - Connect to Garageband via USB-C and record both the music and the bass
  - Honestly, an incredible little device
- Export Garageband recording to mp3
- Take a screenshot of my iPhone with the song I'm playing along to
- Now I have `some_track.mp3` and `some_track.png` on my desktop
- Run my custom `./make_video.sh some_track` command in the terminal
- Video appears on my desktop
- Upload to Instagram stories

It's complicated but trust me, it used to be worse.

## Installation

Go ahead and clone this repo to try it yourself!

## Example Output

<video src="https://github.com/dgurns/insta-ffmpeg/assets/1173791/46004dd5-03e9-4d20-aa33-e5c03f08d33b" style="max-width:300px;"></video>
