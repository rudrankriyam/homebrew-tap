# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.37.2/asc_0.37.2_macOS_arm64"
  version "0.37.2"
  sha256 "1e3fdd646017f1d67b1539f26cfad908aa668779e195e1f10e60c55c76676ec2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.37.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
