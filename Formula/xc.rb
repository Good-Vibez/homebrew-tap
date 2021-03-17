# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Xc < Formula
  desc "A converter from anythin to anything"
  homepage "https://github.com/Good-Vibez/ct"
  url "https://github.com/Good-Vibez/ct"
  head "https://github.com/Good-Vibez/ct", branch: :dev
  version "0.0.1"
  sha256 "37456a19be80e8a9ec8d0f1b37842ff69a0296456e3c10864e00910b9c241f4a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "-p", "xc"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test xc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
