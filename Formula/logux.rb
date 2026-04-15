class Logux < Formula
  desc "Android Logs & Traffic CLI — real-time logcat viewer with filtering, presets, traffic inspection, mock rules"
  homepage "https://github.com/thothlab/logux"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thothlab/logux/releases/download/v2.1.0/logux-macos-arm64.tar.gz"
      sha256 "067aeeb57a5f462cf38e64db0315acbb72c74855c2e0e320307b161c0c9b82e2"
    end
    on_intel do
      url "https://github.com/thothlab/logux/releases/download/v2.1.0/logux-macos-x86_64.tar.gz"
      sha256 "2b88837d10dbde1f9907c028b3179e8873a52027a729ec76f4f9c96121dab4d4"
    end
  end

  def install
    bin.install "logux"
  end

  def caveats
    <<~EOS
      logux требует установленный `adb` в PATH.

      macOS:  brew install --cask android-platform-tools
      или:    brew install android-platform-tools
    EOS
  end

  test do
    # logux is a TUI — it can't be exercised without a PTY.
    # Minimal sanity check: the installed binary is executable.
    assert_predicate bin/"logux", :executable?
  end
end
