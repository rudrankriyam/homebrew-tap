# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.26.0/asc_0.26.0_macOS_arm64"
  version "0.26.0"
  sha256 "0f2a5078b49d8c817f8d394ff116314fd9df6d0b484252999d5f12effa75983e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.26.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
