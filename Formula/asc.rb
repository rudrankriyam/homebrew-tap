# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.40.0/asc_0.40.0_macOS_arm64"
  version "0.40.0"
  sha256 "a0ead26c63ba906812b24d026a4f13cfc7c9a8b28cc1e6e2c7170bb80ab9a603"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.40.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
