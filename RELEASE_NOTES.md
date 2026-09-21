# Voxo — Release Notes

## v2.0.1

### Subscriptions are back
- **Subscribe inside Voxo with Razorpay** — monthly ₹20 or yearly ₹220. Press
  Subscribe, pay on Razorpay's secure page in your browser (UPI, cards,
  netbanking), and Voxo unlocks by itself within a few seconds.
- **Restore on another computer or after reinstalling** — enter your email and
  the subscription ID from your Razorpay email (starts with `sub_`).
- **Cancel from the Plans tab.** Voxo stays unlocked until the end of the period
  you have paid for, and you are not charged again.
- Works offline: after a successful check Voxo keeps working without internet
  until 14 days past your renewal date, then checks in again.
- Your payment details never pass through Voxo, and no payment keys are stored
  in the app.

### Downloads
- The download server now keeps only the current version. Older installers are
  removed when a new version is published.

## v2.0.0

### In-app updates now work
- **Check, download and install from inside Voxo.** Open the **Updates** tab, or
  let Voxo check on its own at launch and every four hours. Downloading is
  always your choice; Voxo then restarts itself on the new version.
- **Three update sources, always in the same order:** GitHub public releases
  first, then the private GitHub repository (when enabled for the build), then
  Cloudflare R2. If one source is unreachable or missing a file, Voxo quietly
  moves on to the next.
- **Every update is signature-checked** with Voxo's own signing key before
  anything on your computer is replaced. A tampered or corrupted download is
  rejected and nothing is installed.
- Leftover installer files from updates are removed automatically at launch;
  **Clean up downloaded installers** does the same on demand.

### New look
- **New premium app icon** — the Voxo speaking-mouth symbol, now in gold, on a
  dark charcoal squircle with a fine rim. A light version is used when Voxo is
  in Light appearance.
- The Voxo logo inside the app now follows Light/Dark appearance.

### Downloads
- Separate native builds for **Apple Silicon** (`_aarch64.dmg`) and **Intel**
  Macs (`_x64.dmg`).
- Old builds are now removed from the download server when a new version is
  published, so the site always offers the current release.

### Fixes
- The app now reports its real version number (previous builds always showed
  1.0.0, which confused update checks).
- About screen now correctly says Tauri 2 (it still said Electron).

### One-time step for existing users
Versions 1.0.4 and earlier were built without the updater, so they cannot
update themselves. Download and install **2.0.0 once** from the releases page
or ipconfig.co.network/voxo. Every update after that happens inside the app.

### Requirements
- macOS 11+, Windows 10+, or Linux
- Python 3.9+ with `whisper-timestamped`
- FFmpeg — downloaded automatically on first use if not already installed

### Known limitations
- macOS builds are ad-hoc signed, not notarised. On first launch, right-click
  the app and choose **Open** (once)

## v1.0.0

First public release.

### Transcription
- Local AI transcription powered by Whisper (whisper-timestamped)
- **Auto-detect language**, in two modes:
  - *One language* (default) — detects once from a sample and uses it for the
    whole file, so a recording never comes back as a mix of languages
  - *Allow multiple languages* — for genuinely multilingual recordings
- Manual language selection for 20+ languages, including Telugu, Tamil, Hindi,
  Kannada, Malayalam, Marathi, Bengali, Gujarati, Punjabi and Urdu
- Whisper models: tiny, base, small, medium, large
- Accurate mode and word-by-word timings
- Silence/pause detection with configurable threshold and minimum length

### Output
- SRT and VTT subtitles
- Timestamped and plain-text transcripts
- Per-sentence title files
- TTS narration script
- Burned-in captions

### Other tools
- Batch file renaming with pattern presets
- Batch processing of multiple files

### Licensing
- Razorpay monthly and yearly subscriptions
- Prepaid activation codes — monthly, yearly and lifetime. One-time online
  activation, then fully offline
- 14-day offline grace period for subscriptions


### Built with Tauri
Voxo uses the operating system's own webview instead of bundling a browser
engine, so the download is a fraction of the size of a typical desktop app.

### Requirements
- macOS 11+, Windows 10+, or Linux
- Python 3.9+ with `whisper-timestamped`
- FFmpeg — downloaded automatically on first use if not already installed

### Known limitations
- macOS builds are ad-hoc signed, not notarised. On first launch, right-click
  the app and choose **Open**
