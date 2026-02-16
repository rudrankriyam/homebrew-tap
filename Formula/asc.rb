# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.8/asc_0.28.8_macOS_arm64"
  version "0.28.8"
  sha256 "119a342a91b78de9b0b944cf085dac6210afbafc4707cd5bb3663d58033e77cd"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.8_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
