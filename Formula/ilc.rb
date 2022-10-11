# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ilc < Formula
  desc "A simple way to create a command-line utility."
  homepage "https://github.com/evilmarty/ilc"
  version "0.5.3"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evilmarty/ilc/releases/download/v0.5.3/ilc-0.5.3-darwin_amd64"
      sha256 "edb9a119114dcb0f07d2b34d5fcf9731b2c40e2d43511dc9583a05735e76e130"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evilmarty/ilc/releases/download/v0.5.3/ilc-0.5.3-darwin_arm64"
      sha256 "2e0bde178695d1e5a0a886d2b02c666cdcb54f845fe85e6692bafdd7c8844b07"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/evilmarty/ilc/releases/download/v0.5.3/ilc-0.5.3-linux_arm64"
      sha256 "1c3b7634a8255583c9d8d64a1cccc5830af6a31955bfd66236c1560acfddbe1b"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/evilmarty/ilc/releases/download/v0.5.3/ilc-0.5.3-linux_armv6"
      sha256 "f849aa4d9870109155de359ce578f9209120c2e66a7bfaef77b4e6875b7944f9"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/evilmarty/ilc/releases/download/v0.5.3/ilc-0.5.3-linux_amd64"
      sha256 "3a1e1d08ca961f721e9d1e66fd06e09a1b3481ccf03f22a1afbf2908a38aba38"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
  end

  test do
    system "#{bin}/ilc", "--version"
  end
end
