# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.41.4/asc_0.41.4_macOS_arm64'
  version '0.41.4'
  sha256 'ee57acff56565fd01fee914b2680d9ae5fcd8dd8e13888caeecb68d2d1f247f0'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.41.4_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
