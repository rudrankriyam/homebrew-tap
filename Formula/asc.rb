# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.33.2/asc_0.33.2_macOS_arm64"
  version "0.33.2"
  sha256 "3717937b9e3fc921370fac94e628cc10e96be2beb26c3731652d6795880867e9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.33.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
