# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.11/asc_0.28.11_macOS_arm64"
  version "0.28.11"
  sha256 "c2e4c6742edde0425d826d7745585c00d73e4cfefdb2576ea18cdbd7754cf5ef"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.11_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
