# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.0/asc_0.28.0_macOS_arm64"
  version "0.28.0"
  sha256 "dda72370b7d2c10901a996e1028fb0b572f846b61a6f1bdef54d8f49d836d146"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
