# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.42.0/asc_0.42.0_macOS_arm64'
  version '0.42.0'
  sha256 '71878e77c79407929b5bab560b0134090331426ff0dc71844591872e2f045c71'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.42.0_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
