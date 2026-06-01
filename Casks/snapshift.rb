cask "snapshift" do
  version "0.1.6"
  # Installer filenames still use 0.1.5 from the Tauri release build.
  build = "0.1.5"

  on_arm do
    url "https://github.com/miroslav-gruevski/SnapShift/releases/download/v#{version}/SnapShift_#{build}_aarch64.dmg",
        verified: "github.com/miroslav-gruevski/SnapShift/"
    sha256 "88a8553aa30961361c8d3fe0305031fe310dfbbf3f9bfae098b49737fafa8da6"
  end

  on_intel do
    url "https://github.com/miroslav-gruevski/SnapShift/releases/download/v#{version}/SnapShift_#{build}_x64.dmg",
        verified: "github.com/miroslav-gruevski/SnapShift/"
    sha256 "f933a85f94736b9b2c10172806f91783d9a676f27093d28ea55bd2f0139dccc2"
  end

  name "SnapShift"
  desc "Tray-based batch image converter"
  homepage "https://github.com/miroslav-gruevski/SnapShift"

  app "SnapShift.app"

  caveats <<~EOS
    SnapShift is not notarized by Apple, so macOS may block the first launch.

    If you see "Apple could not verify SnapShift.app is free of malware":
      1. Click Done.
      2. Open System Settings -> Privacy & Security.
      3. Scroll to Security and click Open Anyway for SnapShift.
      4. Open SnapShift again.

    Future launches should open normally.
  EOS

  zap trash: [
    "~/Library/Application Support/com.miro.snapshift",
    "~/Library/Caches/com.miro.snapshift",
    "~/Library/Preferences/com.miro.snapshift.plist",
  ]
end
