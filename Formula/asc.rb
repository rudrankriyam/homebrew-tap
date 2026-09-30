# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "Fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rorkai/App-Store-Connect-CLI"
  version "5.8.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/5.8.0/asc_5.8.0_macOS_arm64"
      sha256 "a49d21a94418e8371f16f29d56ec39c205177375174f5a13c7e829da56190f10"
    else
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/5.8.0/asc_5.8.0_macOS_amd64"
      sha256 "4ca78c39f2faface19f4f3ed2da008849fd90ae640a87402fc4111758f7c31e1"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "asc_5.8.0_macOS_arm64" => "asc"
    else
      bin.install "asc_5.8.0_macOS_amd64" => "asc"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asc --version")
  end
end
