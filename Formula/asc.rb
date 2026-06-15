# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "Fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rorkai/App-Store-Connect-CLI"
  version "2.0.0"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/2.0.0/asc_2.0.0_macOS_arm64"
      sha256 "4619d19388fba8a01f04afefcd34cecb7f17aca1607dcd885c6e8865be573421"
    else
      url "https://github.com/rorkai/App-Store-Connect-CLI/releases/download/2.0.0/asc_2.0.0_macOS_amd64"
      sha256 "079b98a5ef48cef084ebfac0f9489f6439de70f6dec08134bbf8bdf9d1d5b6fb"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "asc_2.0.0_macOS_arm64" => "asc"
    else
      bin.install "asc_2.0.0_macOS_amd64" => "asc"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asc --version")
  end
end
