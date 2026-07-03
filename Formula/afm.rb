# typed: false
# frozen_string_literal: true

class Afm < Formula
  desc "Native CLI for Foundation Models on Apple platforms"
  homepage "https://github.com/rudrankriyam/Foundation-Models-Framework-CLI"
  url "https://github.com/rudrankriyam/Foundation-Models-Framework-CLI/releases/download/0.1.0/afm_0.1.0_macOS_universal"
  version "0.1.0"
  sha256 "476555de227aab44042874b4b928f6f0907ef65805de4ebef74d1f0fa0e0953e"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "afm_0.1.0_macOS_universal" => "afm"
  end

  test do
    assert_match "Foundation Models", shell_output("#{bin}/afm --help")
  end
end
