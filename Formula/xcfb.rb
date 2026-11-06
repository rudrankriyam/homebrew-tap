# typed: false
# frozen_string_literal: true

class Xcfb < Formula
  desc "Unofficial CLI for automating Apple Feedback Assistant workflows"
  homepage "https://github.com/rudrankriyam/Feedback-Assistant-CLI"
  url "https://github.com/rudrankriyam/Feedback-Assistant-CLI/archive/refs/tags/0.3.1.tar.gz"
  sha256 "045758688055262f5302bde688b57a59d3f8aebb326f8853ad950e07c34ec8f6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on xcode: ["16.0", :build]
  depends_on macos: :sonoma

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "xcfb"
    bin.install ".build/release/xcfb"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcfb version").strip
    assert_match "xcfb prepare", shell_output("#{bin}/xcfb --help")
  end
end
