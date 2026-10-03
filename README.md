<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="icon-dark.png">
    <img src="icon-light.png" width="128" height="128" alt="Voxo icon">
  </picture>
</p>

<h1 align="center">Voxo 2.0.4</h1>

<p align="center">Transcription, captions and batch media tools that run on your own computer.<br>
macOS, Windows and Linux. Audio never leaves your machine.</p>

<p align="center">
  <img src="icon-light.png" width="56" alt="Voxo light icon">&nbsp;
  <img src="icon-dark.png" width="56" alt="Voxo dark icon">
</p>

## Download Voxo 2.0.4

| System | File |
|---|---|
| macOS — Apple silicon (M1–M4) | [Voxo_2.0.4_aarch64.dmg](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.4/Voxo_2.0.4_aarch64.dmg) |
| macOS — Intel | [Voxo_2.0.4_x64.dmg](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.4/Voxo_2.0.4_x64.dmg) |
| Windows 10/11 — 64-bit | [Voxo_2.0.4_x64-setup.exe](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.4/Voxo_2.0.4_x64-setup.exe) |
| Linux — any distribution | [Voxo_2.0.4_amd64.AppImage](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.4/Voxo_2.0.4_amd64.AppImage) |
| Linux — Debian / Ubuntu | [Voxo_2.0.4_amd64.deb](https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v2.0.4/Voxo_2.0.4_amd64.deb) |

Also mirrored at [ipconfig.co.network/voxo](https://ipconfig.co.network/voxo). Once installed, Voxo updates itself.

**macOS:** Voxo is not signed with an Apple Developer ID. After dragging it to Applications, run once in Terminal:

```bash
xattr -cr /Applications/Voxo.app
```

**Windows:** if SmartScreen warns about an unknown publisher, choose More info → Run anyway.
**Linux:** `chmod +x Voxo_*.AppImage && ./Voxo_*.AppImage`, or `sudo apt install ./Voxo_*.deb`.

## Features

- **Local AI transcription** — Whisper Tiny to Large v3 and Large v3 Turbo, Distil-Whisper for fast English, and language-trained models for Tamil, Hindi, Telugu, Kannada, Gujarati, Malayalam and Bengali. Download, use and delete them in the AI Models tab; models already on your computer are reused.
- **Numbers as digits** — spoken numbers become 2024, 3,500, 49 in English, Tamil and Hindi, with exact subtitle timing.
- **Progress you can read** — each step with percentage, time elapsed, time remaining and finish time, for one file or a whole batch.
- **Subtitles and scripts** — SRT, VTT, timestamped and plain TXT, word-by-word captions, per-sentence title files, TTS narration scripts, captions burned into MP4.
- **Batch rename for every file type** — files, folders or whole folder trees; templates, find and replace, case, numbering, dates; live preview with clash checks and one-click undo.
- **AI assistant** — autocomplete, rename ideas and title/description/chapter suggestions, using free local models (Ollama, LM Studio), GitHub Models (the models behind GitHub Copilot) or any OpenAI-compatible URL.
- **Auto-detects the language**, or pick one of 20.
- **Sound effects and motion** — with on/off, volume, and reduced-motion respected.
- **Light and dark** appearance, automatic or chosen.
- **Plans** — ₹20/month or ₹220/year with Razorpay, or monthly, yearly and lifetime activation codes.
- **Signed updates** from GitHub and Cloudflare R2, checked before they install.

## What's new in 2.0.4

### Fixed: AI Models tab and transcription in 2.0.3
- 2.0.3 left two of its Python files out of the app, so the AI Models tab said
  "Could not list models" and transcription could not start. All Python files are
  bundled now, and a pre-build check refuses any release that misses one.

### Activation codes work on Cloudflare's free plan
- Voxo's server now also answers at a free workers.dev address, and the app falls back
  to it automatically, so codes and subscriptions no longer depend on a site route.

### Owner code manager
- Live counts of total, unused, active, expired, revoked and deleted codes.
- Every code shows its status, the computer and system that activated it, the IP
  address and city it came from, when it was activated, when it expires (with a bar of
  the time left), the Voxo version, and when it was last seen.
- Delete or revoke any code, one at a time or many at once. A deleted or revoked code
  that is in use switches that copy of Voxo back to the free plan the next time it
  starts; an unused one can never be activated. Restore undoes either.
- Search by code, IP, computer, city or email; filter by status.

### More sound and motion
- New sounds for deleting, locking, unlocking, opening details, notifications, tab
  changes and accepting autocomplete, plus a soft tick on every button.
- Pop-up notices, ripples on buttons, counting numbers, cards that rise into place,
  and a pulsing marker on active codes.


### Windows and Linux builds are published again
- Every release now builds Windows (.exe) and Linux (.AppImage, .deb) on GitHub's own
  Windows and Linux machines and adds them to the same release, the update feed and R2.
  Before, the build never started: the release script could not push its workflow file,
  and the build machines had no signing key.

### Progress you can read
- A new progress card shows each step — prepare, pauses, language, model, transcribe,
  numbers, write files, burn captions — with the percentage, time elapsed, time
  remaining and the clock time it will finish. With several files it shows the batch too.
- The percentage comes from Whisper's real position in the audio, not a guess.
- Model, Ollama and update downloads show size, speed-based time left and elapsed time.

### Numbers are transcribed as digits
- Spoken numbers are written as digits: "three thousand five hundred" becomes 3,500,
  "மூவாயிரத்து ஐநூறு" becomes 3500, "दो हज़ार चौबीस" becomes 2024 — in English, Tamil and
  Hindi. Subtitle timings stay exact. Turn it off with "Write numbers as digits".

### Many local AI models for accurate transcription
- New AI Models tab: download, use and delete models — Whisper Tiny to Large v3, Large v3
  Turbo, Distil-Whisper (fast English), and language-trained models for Tamil, Hindi,
  Telugu, Kannada, Gujarati, Malayalam and Bengali.
- Models already downloaded by Whisper or Hugging Face on this computer are used as they
  are — nothing is downloaded twice. Every Whisper download is checked by SHA-256.

### AI assistant: autocomplete, rename ideas, suggestions
- Grey autocomplete text in rename and title fields — press Tab to accept.
- "AI suggest names" in Batch Rename, using each video's transcript when there is one.
- "Suggest titles, description and chapters" after a transcription.
- Runs on free local models through Ollama (download, use and uninstall them inside
  Voxo) or LM Studio, or online with GitHub Models (the models behind GitHub Copilot)
  or any OpenAI-compatible URL.

### Batch rename for every file type
- Rename any files, whole folders, or everything inside folders (with subfolders),
  picked or dropped. Rules: template with {name} {n} {date} {time} {folder} {text} {ext},
  find and replace (with regular expressions), case, spaces, extension, numbering.
- Live preview flags clashes and invalid names before anything changes. Swaps and
  case-only renames work. Undo the last rename with one click.

### Activation codes
- Monthly, yearly and lifetime codes. On the owner's computer a Codes tab generates any
  number of each; the server guarantees no code is ever issued twice and strikes out
  used ones.

### Sounds and motion
- Sound effects for start, each step, finish, errors and downloads (Settings ⚙ → sound
  on/off and volume), a live sound-wave drop zone, progress animations and a short
  celebration when a batch finishes. Reduced-motion settings are respected.

### Fixed
- Transcription could hang on long files: Whisper's error output was read only after
  its normal output, so a full pipe froze both sides. Both are now read at once.
- Cancel now stops the transcription immediately.
- Log lines no longer repeat once per previous run.
- Dragging files from Finder or Explorer now passes their real paths.
- Language defaults to auto-detect again.
- Silence and gap sliders now actually change the result.
- Burning captions works with Windows paths.
- Activating a code no longer freezes the window while it contacts the server.
- About is one section: the app, its release notes, and the creator.

macOS: after installing, run `xattr -cr /Applications/Voxo.app` once.

## Support

Questions: JKS.sys@icloud.com · Sponsor Voxo: https://razorpay.me/@NSBJKS

Made by Jagadeesh Kumar S, creator — [youtube.com/@JKS-sys](https://youtube.com/@JKS-sys).
