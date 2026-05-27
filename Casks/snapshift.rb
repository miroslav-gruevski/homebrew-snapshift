cask "snapshift" do
  version "0.1.5"

  on_arm do
    url "https://github.com/miroslav-gruevski/SnapShift/releases/download/v#{version}/SnapShift_#{version}_aarch64.dmg"
    sha256 :no_check
  end

  on_intel do
    url "https://github.com/miroslav-gruevski/SnapShift/releases/download/v#{version}/SnapShift_#{version}_x64.dmg"
    sha256 :no_check
  end

  name "SnapShift"
  desc "Tray-based batch image converter"
  homepage "https://github.com/miroslav-gruevski/SnapShift"

  app "SnapShift.app"

  zap trash: [
    "~/Library/Application Support/com.miro.snapshift",
    "~/Library/Caches/com.miro.snapshift",
    "~/Library/Preferences/com.miro.snapshift.plist",
  ]
end
