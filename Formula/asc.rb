# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "Fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rorkai/App-Store-Connect-CLI"
  version "3.2.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/3.2.0/asc_3.2.0_macOS_arm64"
      sha256 "968037997a0f5746b1410e189f294c8e7b1fe02b75fbeca331cd5c335efb85fb"
    else
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/3.2.0/asc_3.2.0_macOS_amd64"
      sha256 "9e28d86d9691630603f7b06cc0bcf616873a061db995edb7c4ca5ee716e72d5e"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "asc_3.2.0_macOS_arm64" => "asc"
    else
      bin.install "asc_3.2.0_macOS_amd64" => "asc"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asc --version")
  end
end
