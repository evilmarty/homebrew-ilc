# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ilc < Formula
  desc "Simplify creating command-line utilities"
  homepage "https://github.com/evilmarty/ilc"
  version "0.17.0"
  license "GPL"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evilmarty/ilc/releases/download/v0.17.0/ilc-0.17.0-darwin_amd64"
      sha256 "6ab8493408b90b11c0ce7bcfa2b054a329fd2d39a411068285f0bd607fbdadaa"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evilmarty/ilc/releases/download/v0.17.0/ilc-0.17.0-darwin_arm64"
      sha256 "130ae5edd8778a035d4f96bf250facca6e918a3db89320be439fabb2b1d261f7"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.17.0/ilc-0.17.0-linux_amd64"
        sha256 "966d8459b328369914f9d020edd07e8e7bc6abfafface4ebcefe6ada2fd17fc8"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.17.0/ilc-0.17.0-linux_armv6"
        sha256 "b0744866729337b0873196d305a4007a51b4070fa8e6f60cc36bfe8cdbaf7636"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.17.0/ilc-0.17.0-linux_arm64"
        sha256 "0e931734df369fafcc7c86679aafc1fa53e1f2f12aa2e96c5c0a207186f38664"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
  end

  head "https://github.com/evilmarty/ilc.git", branch: "main"

  test do
    system "#{bin}/ilc", "--version"
  end
end
