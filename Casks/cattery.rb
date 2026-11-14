cask "cattery" do
  version "0.3.0"
  sha256 "88d5256a11af8c1c31519b52c350a9a70d15f3638922ec6122c9fc90e7fd4caa"

  url "https://github.com/lambdalisue/cattery/releases/download/v#{version}/Cattery_#{version}_aarch64.dmg"
  name "Cattery"
  desc "GUI terminal app built on the felis terminal daemon"
  homepage "https://github.com/lambdalisue/cattery"

  depends_on arch: :arm64

  app "Cattery.app"
  binary "#{appdir}/Cattery.app/Contents/MacOS/cattery"

  # Cattery is signed by a self-signed certificate, not by an Apple
  # Developer ID, nor notarized, so Gatekeeper refuses the quarantined bundle
  # ("damaged") and Homebrew no longer offers --no-quarantine.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Cattery.app"]
  end
end
