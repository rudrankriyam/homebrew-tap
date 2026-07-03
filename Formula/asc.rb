# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "Fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rorkai/App-Store-Connect-CLI"
  version "2.5.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/2.5.0/asc_2.5.0_macOS_arm64"
      sha256 "204179610ea1932b01105af0ade0da08087f7a6ade4b91664f2aae53f82c278a"
    else
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/2.5.0/asc_2.5.0_macOS_amd64"
      sha256 "a8fc72fbd8f7696a0a92bdc2a57ec103b0d1f2a02ec7e992e0d84f16513e8149"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "asc_2.5.0_macOS_arm64" => "asc"
    else
      bin.install "asc_2.5.0_macOS_amd64" => "asc"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asc --version")
  end
end
