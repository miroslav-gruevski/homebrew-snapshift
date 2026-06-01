cask "snapshift" do
  version "0.1.7"

  on_arm do
    url "https://github.com/miroslav-gruevski/SnapShift/releases/download/v#{version}/SnapShift_#{version}_aarch64.dmg",
        verified: "github.com/miroslav-gruevski/SnapShift/"
    sha256 "d234162abc1f6f45f8418f4617a2777bb129cd056b0e952b55539d70bee019e7"
  end

  on_intel do
    url "https://github.com/miroslav-gruevski/SnapShift/releases/download/v#{version}/SnapShift_#{version}_x64.dmg",
        verified: "github.com/miroslav-gruevski/SnapShift/"
    sha256 "ff6be054438668fdeaf988d2fa63b55cef70c1c16d80efc2221103bd63cb0e4e"
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
