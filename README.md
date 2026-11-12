<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="icon-dark.png">
    <img src="icon-light.png" width="128" height="128" alt="Voxo icon">
  </picture>
</p>

<h1 align="center">Voxo 2.0.8</h1>

<p align="center">Transcription, captions and batch media tools that run on your own computer.<br>
macOS, Windows, Linux, ChromeOS and FreeBSD. Audio never leaves your machine.</p>

<p align="center">⭐ <b>If Voxo helps you, please star this repository</b> — it helps other people find it.</p>

<p align="center">
  <img src="icon-light.png" width="56" alt="Voxo light icon">&nbsp;
  <img src="icon-dark.png" width="56" alt="Voxo dark icon">
</p>

<p align="center">
  <a href="https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/tag/v2.0.8"><b>Download Voxo 2.0.8</b></a> ·
  <a href="https://ipconfig.co.network/voxo"><b>Website — ipconfig.co.network/voxo</b></a> ·
  <a href="#install-in-one-line">Install in one line</a>
</p>

<p align="center"><img src="demos/startup.webp" width="720" alt="Voxo starting up — By Jagadeesh Kumar S"></p>

## Install in one line

**With Pour** (macOS, Linux, Windows, FreeBSD) — installs Voxo and keeps it updated:

```bash
curl -fsSL https://ipconfig.co.network/pour/install | sh
pour install --cask voxo
```

**macOS or Linux without Pour** — downloads the right file for your computer, checks it and installs it:

```bash
curl -fsSL https://raw.githubusercontent.com/JKS-sys/Voxo-06-Sep-2026-Releases/main/install.sh | sh
```

**Windows 10/11** (PowerShell):

```powershell
irm https://raw.githubusercontent.com/JKS-sys/Voxo-06-Sep-2026-Releases/main/install.ps1 | iex
```

## Download Voxo 2.0.8

| System | File |
|---|---|
| macOS — Apple silicon (M1–M4) | [Voxo_2.0.8_aarch64.dmg](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.8/Voxo_2.0.8_aarch64.dmg) |
| macOS — Intel | [Voxo_2.0.8_x64.dmg](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.8/Voxo_2.0.8_x64.dmg) |

Release page: https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/tag/v2.0.8 · Also on the website: https://ipconfig.co.network/voxo · Once installed, Voxo updates itself.

**macOS:** Voxo is not signed with an Apple Developer ID. After dragging it to Applications, run once in Terminal
(the one-line installers do this for you):

```bash
xattr -cr /Applications/Voxo.app
```

**Windows:** if SmartScreen warns about an unknown publisher, choose More info → Run anyway.
**Linux:** `chmod +x Voxo_*.AppImage && ./Voxo_*.AppImage`, or `sudo apt install ./Voxo_*.deb`.
**ChromeOS:** Settings → Developers → turn on the Linux development environment, then open the Linux `.deb` from Files.
**FreeBSD 14:** unpack the tarball, `pkg install gtk3 webkit2-gtk_41 libsoup3 python311 ffmpeg`, then `./voxo` (README.txt inside).
**Haiku:** not available — Tauri, which Voxo is built on, has no Haiku WebView.

## See it in action

### Transcribe

<img src="demos/transcribe.webp" width="860" alt="Voxo — Transcribe (animation)">

Drop files, pick a model, watch each stage finish — captions, transcript and title files are written next to you. [Watch the MP4 with sound](demos/transcribe.mp4).

### Remove many words at once

<img src="demos/rename-words.webp" width="860" alt="Voxo — Remove many words at once (animation)">

Type the words or click the chips; the preview shows every new name before anything changes. [Watch the MP4 with sound](demos/rename-words.mp4).

### Right-click anywhere

<img src="demos/menus.webp" width="860" alt="Voxo — Right-click anywhere (animation)">

What you clicked first, then everything else — and eight layouts for your recent work. [Watch the MP4 with sound](demos/menus.mp4).

### Any window size

<img src="demos/small-window.webp" width="860" alt="Voxo — Any window size (animation)">

From 1600×1000 down to 420×260: nothing overlaps, nothing scrolls sideways. [Watch the MP4 with sound](demos/small-window.mp4).

### One account

<img src="demos/account.webp" width="860" alt="Voxo — One account (animation)">

Sign in with an email code; seats, subscriptions and codes in one place. [Watch the MP4 with sound](demos/account.mp4).

### Menu-bar quick panel

<img src="demos/quick-panel.webp" width="860" alt="Voxo — Menu-bar quick panel (animation)">

Live ↓/↑ speed, a speed test and one-click actions. [Watch the MP4 with sound](demos/quick-panel.mp4).

## Screenshots

### Transcribe

<img src="screenshots/transcribe-dark.webp" width="860" alt="Voxo — Transcribe">

Drop audio or video and watch every step — pauses, language, model, transcription, numbers — with the percentage, time elapsed, time left and the clock time it will finish.

### Batch Rename — remove many words at once

<img src="screenshots/rename-light.webp" width="860" alt="Voxo — Batch Rename — remove many words at once">

Type the words to remove, or click the chips Voxo finds in your file names; whole words or anywhere. Presets, templates, numbering and AI names too, with a live preview and one-click undo.

### AI Models

<img src="screenshots/models-dark.webp" width="860" alt="Voxo — AI Models">

Whisper, Turbo, CrisperWhisper, models trained for Tamil, Hindi, Hinglish, Telugu, Kannada, Marathi and many world languages — plus Ollama models like Gemma, Qwen3, DeepSeek R1 and gpt-oss. The free built-in Voxo AI works for everyone.

### Account

<img src="screenshots/account-light.webp" width="860" alt="Voxo — Account">

Sign in with an email code. Pro bought anywhere follows your account to two computers, works offline for 14 days, and you can free a seat from here.

### Right-click menus

<img src="screenshots/menu-dark.webp" width="860" alt="Voxo — Right-click menus">

Right-click anywhere for what you clicked first, then everything Voxo does — themes, sounds, layouts, speed test, notifications.

### Menu-bar quick panel

<img src="screenshots/quick-dark.webp" width="860" alt="Voxo — Menu-bar quick panel">

Left-click the menu-bar icon: live ↓/↑ network speed, a speed test and twelve one-click actions. Choose Dock + menu bar, Dock only, menu bar only or background.

### Settings

<img src="screenshots/settings-dark.webp" width="860" alt="Voxo — Settings">

Sounds and ten sound packs, Off / Subtle / Lively animations, eight layouts, desktop notifications, network speed and where Voxo lives.

### Plans

<img src="screenshots/plans-dark.webp" width="860" alt="Voxo — Plans">

₹20 a month or ₹220 a year through Razorpay, or a monthly, yearly or lifetime activation code. Basic models and the free AI stay free for everyone.

### About

<img src="screenshots/about-light.webp" width="860" alt="Voxo — About">

The app, its release notes, the licence and the creator in one place.

### Owner Panel

<img src="screenshots/owner-overview-light.webp" width="860" alt="Voxo — Owner Panel">

For the developer only, in its own window and always connected to the ipconfig dashboard: computers, active users, Pro accounts, MRR, codes, subscriptions and crash reports.

## Features

- **Local AI transcription** — Whisper Tiny to Large v3 and Large v3 Turbo, Distil-Whisper and CrisperWhisper for English, and one-language models for Tamil, Hindi (IIT Madras, IISc Vaani), Hinglish, Telugu, Kannada, Marathi, Gujarati, Malayalam, Bengali, plus German, French, Japanese, Chinese, Korean, Arabic, Russian, Turkish, Persian, Hebrew, Swedish, Norwegian, Finnish and Malay. Download, use and delete them in AI Models; models already on your computer are reused.
- **Numbers as digits** — spoken numbers become 2024, 3,500, 49 in English, Tamil and Hindi, with exact subtitle timing.
- **Progress you can read** — each step with percentage, time elapsed, time remaining and finish time, for one file or a whole batch; a desktop notification when a long job finishes (click it to come back).
- **Subtitles and scripts** — SRT, VTT, timestamped and plain TXT, word-by-word captions, per-sentence title files, TTS narration scripts, captions burned into MP4.
- **Batch rename for every file type** — files, folders or whole folder trees; templates, find and replace, **remove many words at once** (whole words or anywhere, with one-click chips), case, numbering, dates; live preview with clash checks and one-click undo.
- **AI assistant** — free built-in Voxo AI for everyone, or local models (Ollama — Gemma 3/4, Qwen3, DeepSeek R1, gpt-oss, Granite, Mistral, Phi-4, LFM 2.5 and more — and LM Studio), GitHub Models or any OpenAI-compatible URL.
- **Account** — sign in with an email code or password; Pro from the shop, a subscription or a code lives on your account, bound to each computer with a signed licence that works offline for 14 days. Free a seat from the app.
- **Menu bar, Dock and Finder** — choose Dock + menu bar, Dock only, menu bar only or background. Left-click the menu-bar icon for the quick panel, right-click for the full menu; the Dock icon has New Window, Add Media Files, Batch Rename, Recent Transcripts and more; Finder right-click offers Transcribe with Voxo, Batch Rename and Remove Words. Closing the last window quits Voxo whenever it is in the Dock.
- **Network speed** — live ↓ download / ↑ upload in the header, the quick panel and (optionally) the menu bar, plus a one-click speed test.
- **Right-click menus everywhere** and keyboard shortcuts (press **?**).
- **Looks after small windows** — from 420×260 up, nothing overlaps and nothing scrolls sideways.
- **Start-up animation, 63 sounds with a self-drawing picture each, ten sound packs**, Off / Subtle / Lively animations, eight layouts for recent work.
- **Colour that means one thing everywhere** — numbers, brackets, timestamps, files, errors and successes each have their own colour (no pink), light and dark.
- **Plans** — ₹20/month or ₹220/year with Razorpay, or monthly, yearly and lifetime activation codes.
- **Signed updates** from GitHub and Cloudflare R2, checked before they install.
- **Crash reports you control** — recorded on your computer and only sent if you press Send.
- **Owner Panel** (developer only, its own window, always connected to the ipconfig dashboard): activation codes, subscriptions, crash reports, users, seats and computers.

## What's new in 2.0.8

- **Tools installed with Pour are found.** Voxo now looks for ffmpeg, ffprobe, Python and Ollama in Pour's folders (`~/.pour`, `/opt/pour`, `/usr/local/pour`, `$POUR_PREFIX`, including kegs that are not linked) and asks your login shell as a last step. A broken downloaded copy no longer hides a working one.
- **Every AI model on this Mac.** Models → *On this Mac* lists what any app downloaded: Ollama (also when it is not running), LM Studio, Hugging Face and MLX, Whisper, whisper.cpp, MacWhisper, WhisperKit, GPT4All, Jan and Msty — with sizes, search and Show in Finder.
- **The house theme.** Warm black, gold and warm white, the same as Keel, Nib and Swep; Libre Baskerville is bundled and set in its regular (lighter) weight.
- **New start-up.** Sound bars rise, fold into the icon with a ring burst, the name arrives with a gold shine, four chips draw themselves, then the byline.
- **Better logs.** Find with highlighted matches, line numbers and times, a running clock, Follow / Wrap / Times switches, "First problem", an activity strip you can click, and a summary footer.
- **Owner Panel analysis.** A world map shaded by computers per country with pulsing dots and the top countries, plus new computers, activations, sign-ups and crashes per day and rings for versions, plans, systems and subscriptions.
- **Nothing overlaps** when the window shrinks: rows wrap, long names shorten, tables scroll.
- **Faster to open.** Models, Rename and Account load when first opened; the map loads only in the Owner Panel.

macOS: after installing, run `xattr -cr /Applications/Voxo.app` once.

<!-- licence -->
## Licence

Proprietary — © 2026 Jagadeesh Kumar S. All rights reserved. You may install and use Voxo; see LICENSE for the terms.
<!-- /licence -->

## Support

Questions: JKS.sys@icloud.com · Sponsor Voxo: https://razorpay.me/@NSBJKS · Website: https://ipconfig.co.network/voxo

Made by Jagadeesh Kumar S, creator — [youtube.com/@JKS-sys](https://youtube.com/@JKS-sys).

⭐ **If Voxo helps you, please star this repository** — it helps other people find it.
