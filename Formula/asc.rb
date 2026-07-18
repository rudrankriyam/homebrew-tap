# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "Fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rorkai/App-Store-Connect-CLI"
  version "3.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/3.1.0/asc_3.1.0_macOS_arm64"
      sha256 "1c79e6da889ca665470f6cebe033b48897352ab001b04bca04555a86020368c9"
    else
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/3.1.0/asc_3.1.0_macOS_amd64"
      sha256 "9d9fd71c7ef105f3510dc24e9833af53b1ea4df38b61a8a66630fb8c30d345e5"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "asc_3.1.0_macOS_arm64" => "asc"
    else
      bin.install "asc_3.1.0_macOS_amd64" => "asc"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asc --version")
  end
end
