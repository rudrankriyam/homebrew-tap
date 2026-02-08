# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.25.4/asc_0.25.4_macOS_arm64"
  version "0.25.4"
  sha256 "17885a763c831058364f7c76c6528549385587fec3671a78ca9d537f3e5f1004"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.25.4_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
