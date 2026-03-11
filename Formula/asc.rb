# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.39.1/asc_0.39.1_macOS_arm64"
  version "0.39.1"
  sha256 "a9e7da992198d8839ed37b71d1a5fdfc4009484d680c5307b5a96b1edded5154"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.39.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
