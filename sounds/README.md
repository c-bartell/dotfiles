# Sweet custom sounds!
---
This file is mostly for me to be able to piece my sound files back together if I ever need to set up a new computer.

I get the sounds I use for my scripts from [pixabay](https://pixabay.com/sound-effects).

My files:
- `~/sounds/CAW.mp3`
  - [SOURCE](https://pixabay.com/sound-effects/croworraven1-6749/)
- `~/sounds/klaxon.mp3`
  - [SOURCE](https://pixabay.com/sound-effects/croworraven1-6749://pixabay.com/sound-effects/soundfx-for-free-alarm-klaxon-130906/)
  - Edited down with `ffmpeg`:
    ```sh
    $ ffmpeg -i ~/Downloads/soundfx-for-free-alarm-klaxon-130906.mp3 -ss 1.07102 -t 1.4 sounds/klaxon.mp3
    ```
    - Helpful tooling links:
      - Analyzing file metadata for volume at time: [link](https://superuser.com/questions/1183663/determining-audio-level-peaks-with-ffmpeg#:~:text=The%20ebur128%20filter%20provides%20info%20in%20terms%20of%20the%20Loudness%20Recommendation%20EBU%20R128%20metric.)
      - How to ffmpeg: [link](https://hackernoon.com/audio-handling-basics-how-to-process-audio-files-using-python-cli-jo283u3y)
      - Use `ffprobe` instead of `ffmpeg` to analyze files
