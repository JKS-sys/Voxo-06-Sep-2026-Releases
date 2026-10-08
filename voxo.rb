cask "voxo" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.5"
  sha256 arm:   "1da3db055546ab5e1c10d97be4057ba0d11c9af30de21f83a7bf222fc1286dbd",
         intel: "224db85699563226fc0c4cb2cb5a5d8eafc9711d216d0b2ce8980e853f92ccdb"

  url "https://github.com/JKS-sys/Voxo-06-Sep-2026-Releases/releases/download/v#{version}/Voxo_#{version}_#{arch}.dmg"
  name "Voxo"
  desc "Local AI transcription, captions and batch media tools"
  homepage "https://ipconfig.co.network/voxo"

  depends_on macos: ">= :big_sur"
  auto_updates true

  app "Voxo.app"

  # Voxo is not notarized by Apple; this lets macOS open it.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Voxo.app"]
  end

  zap trash: [
    "~/Library/Application Support/network.co.ipconfig.voxo",
    "~/Library/Caches/network.co.ipconfig.voxo",
    "~/Library/WebKit/network.co.ipconfig.voxo",
  ]
end
