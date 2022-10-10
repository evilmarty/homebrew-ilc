# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ilc < Formula
  desc "A simple way to create a command-line utility"
  homepage "https://github.com/evilmarty/ilc"
  url "https://github.com/evilmarty/ilc/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "8d082fbc304a86df5b4a8947dc40761a62bc2d8d1fb12d334b989b82747bd9b8"
  license "GPL-3.0"
  head "https://github.com/evilmarty/ilc.git", branch: "main"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=#{version} -X main.BuildDate=#{build_date}")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ilc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ilc", "--version"
  end

  private

  def build_date
    Time.now.strftime("%Y-%m-%d_%I:%M:%S%p")
  end
end
