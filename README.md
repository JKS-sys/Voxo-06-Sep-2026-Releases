<div align="center">

<img src="https://raw.githubusercontent.com/JKS-sys/Voxo-06-Sep-2026-Releases/main/icon.png" width="128" alt="Voxo">

# Voxo

**Local AI transcription, captions and batch media tools.**

Runs on your own machine. Your audio never leaves your computer.

[Download the latest release](../../releases/latest)

</div>

---

## What it does

- **Transcribe** audio and video with Whisper, entirely offline
- **Auto-detect the language** — one language per file by default, so a
  recording never comes back as a mix; or allow multiple languages when a
  recording really is multilingual
- **Export** SRT, VTT, timestamped and plain transcripts, per-sentence title
  files and a TTS narration script
- **Burn captions** directly into video
- **Detect pauses** with a configurable threshold
- **Batch rename** files with pattern presets

20+ languages, including Telugu, Tamil, Hindi, Kannada, Malayalam, Marathi,
Bengali, Gujarati, Punjabi and Urdu.

## Install

Download the build for your platform from
[Releases](../../releases/latest).

| Platform | File |
|---|---|
| macOS (Apple Silicon) | `Voxo_<version>_aarch64.dmg` |
| macOS (Intel) | `Voxo_<version>_x64.dmg` |
| Windows | `Voxo_<version>_x64-setup.exe` |
| Linux | `Voxo_<version>_amd64.AppImage` |

Voxo is built with Tauri and uses your system's webview rather than bundling a
browser engine, so the download is small.

### macOS first launch

Builds are ad-hoc signed rather than notarised, so macOS asks before opening
one. Right-click the app and choose **Open**, then confirm. You only do this
once.

## Setting up Whisper

Voxo uses [whisper-timestamped](https://github.com/linto-ai/whisper-timestamped)
for transcription. Install it once:

```bash
python3 -m venv ~/voxo-venv
source ~/voxo-venv/bin/activate
pip install whisper-timestamped
```

> If `pip install` fails complaining about PyTorch, your Python is newer than
> the available wheels. Install an older one and use it for the venv — on
> macOS, `brew install python@3.12`.

Voxo finds a virtualenv named `venv`, `.venv` or `voxo-venv` in your home
folder, next to the app, or in the project folder — no configuration needed.

### FFmpeg

Downloaded automatically the first time you transcribe. To install it yourself:

```bash
brew install ffmpeg        # macOS
sudo apt install ffmpeg    # Linux
```

## Licensing

Voxo is free to try, with limits on transcription length, batch size and model
choice. Unlock everything with either:

- a **prepaid activation code** — monthly, yearly or lifetime, or
- a **Razorpay subscription** — monthly or yearly
  *(temporarily unavailable in the current build)*

Activation codes need the internet once. After that Voxo works entirely
offline.

## Updates

Check this releases page for new versions. Automatic in-app updates are coming
in a later release.

## Privacy

Transcription runs locally. Audio and video files are never uploaded. The only
network requests Voxo makes are update checks, and licence activation or
subscription checks.

## Support

Issues and questions: [open an issue](../../issues) · JKS.sys@icloud.com

Made by [Jagadeesh Kumar S](https://www.youtube.com/@JKS-sys) · Chennai, India
