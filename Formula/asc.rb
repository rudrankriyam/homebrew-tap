# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.27.0/asc_0.27.0_macOS_arm64"
  version "0.27.0"
  sha256 "0a60aad64719c5b2dd21262fc7ec6b7fea619113434b0596f4b2780537138bd9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.27.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
