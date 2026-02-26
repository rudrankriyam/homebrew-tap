# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.35.1/asc_0.35.1_macOS_arm64"
  version "0.35.1"
  sha256 "4d1037b96ed654211f02bda427154758270916ac660a795397a6dab28f65bb28"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.35.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
