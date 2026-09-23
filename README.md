# Voxo

AI-powered transcription for **macOS, Windows and Linux**. Whisper runs on your
own machine — your audio never leaves it.

Transcribe audio and video, export SRT/VTT/TXT subtitles, burn captions into
MP4, generate word-by-word captions, per-sentence title files and narration
scripts, and batch-process whole folders.

**This repository holds the downloads only.** The source is private.

---

## Download

Every file below is on the [latest release](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/latest),
and mirrored at [ipconfig.co.network/voxo](https://ipconfig.co.network/voxo).

| System | File | Notes |
|---|---|---|
| macOS — Apple Silicon (M1–M4) | `Voxo_<version>_aarch64.dmg` | macOS 11 or newer |
| macOS — Intel | `Voxo_<version>_x64.dmg` | macOS 11 or newer |
| Windows 10/11 — 64-bit | `Voxo_<version>_x64-setup.exe` | installer |
| Linux — 64-bit | `Voxo_<version>_amd64.AppImage` | `chmod +x`, then run |
| Linux — Debian/Ubuntu | `Voxo_<version>_amd64.deb` | `sudo apt install ./Voxo_*.deb` |

Once installed, Voxo updates itself: **Updates → Check for updates**, or
automatically at launch. Every update is signature-checked before it is
installed.

### macOS: first launch

Voxo is not signed with an Apple Developer ID, so macOS blocks it the first
time and may say the app is damaged. Drag Voxo to Applications, then run this
once in Terminal:

```bash
xattr -cr /Applications/Voxo.app
```

Then open it normally. Nothing else is needed, and updates after that just work.

### Windows

SmartScreen may warn about an unknown publisher. Choose **More info → Run
anyway**.

### Linux

```bash
chmod +x Voxo_*.AppImage && ./Voxo_*.AppImage
```

---

## What you need

- **Python 3.9+** with `whisper-timestamped` — Voxo sets this up for you on
  first use (it downloads PyTorch, about 2.5 GB, once).
- **FFmpeg** — downloaded automatically the first time you transcribe, or use
  your own (`brew install ffmpeg`, `winget install Gyan.FFmpeg`,
  `sudo apt install ffmpeg`).

## Free vs subscription

The free version transcribes the first 50% of each file, one file at a time,
with the `tiny` and `base` models.

A subscription (**₹20/month** or **₹220/year**, paid through Razorpay by UPI,
card or netbanking) unlocks full transcription, every Whisper model, burned-in
captions, word-by-word captions, accurate mode, batch processing, batch image
rename, TTS narration scripts and CSV export. Subscribe inside the app under
**Plans**. Cancel any time — access continues to the end of the paid period.
Prepaid activation codes work too, and keep working offline.

## Support Voxo

Voxo is made and maintained by one person. If it saves you time:

**[❤️ Sponsor / Donate — razorpay.me/@NSBJKS](https://razorpay.me/@NSBJKS)**

## Help

- Release notes: [RELEASE_NOTES.md](RELEASE_NOTES.md)
- Questions, bugs, feature requests: **JKS.sys@icloud.com**
- More tools: [ipconfig.co.network](https://ipconfig.co.network) ·
  [NewsCraft Studio on YouTube](https://youtube.com/@JKS-sys)

Made by [Jagadeesh Kumar S](https://ipconfig.co.network/about), a creator from
Chennai, India.
