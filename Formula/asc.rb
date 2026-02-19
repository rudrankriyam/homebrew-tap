# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.29.2/asc_0.29.2_macOS_arm64"
  version "0.29.2"
  sha256 "7c32dc35afdd1f43d1444f71a6e506931f9521a2a7593b65d694c720d57dc436"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.29.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
