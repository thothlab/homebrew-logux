class Logux < Formula
  desc "Android logcat viewer with filtering, traffic inspection, and mock rules"
  homepage "https://github.com/thothlab/logux"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thothlab/logux/releases/download/v2.2.0/logux-macos-arm64.tar.gz"
      sha256 "b9d39b6e655128caf4122b330a74410e7149f91d9e7061c05523140c221dc868"
    end
    on_intel do
      url "https://github.com/thothlab/logux/releases/download/v2.2.0/logux-macos-x86_64.tar.gz"
      sha256 "9306f836578fc26fae5284ebad78a245711e2086ff2dde9605e1cfb772ffee80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thothlab/logux/releases/download/v2.2.0/logux-linux-arm64.tar.gz"
      sha256 "6c5b041047f9ef59293d169fe4f3f95360aa43d7517bb20df9e8333f040aa9c2"
    end
    on_intel do
      url "https://github.com/thothlab/logux/releases/download/v2.2.0/logux-linux-x86_64.tar.gz"
      sha256 "c6157e1933500d7dd93bbf7bef474d528cabc10eae5c6e91ed5a960fa4b277ee"
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
