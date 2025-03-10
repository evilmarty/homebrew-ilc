# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ilc < Formula
  desc "Simplify creating command-line utilities"
  homepage "https://github.com/evilmarty/ilc"
  version "0.18.2"
  license "GPL"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evilmarty/ilc/releases/download/v0.18.2/ilc-0.18.2-darwin_amd64"
      sha256 "ddb1af954024ae9c4540f327544f804d96b6a3254ce3aa142f7c7c5c6bae231f"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evilmarty/ilc/releases/download/v0.18.2/ilc-0.18.2-darwin_arm64"
      sha256 "b9c746ea34634b898a469a310c0cb873e775d2bbd5028ce7f9771f19de4f877a"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.18.2/ilc-0.18.2-linux_amd64"
        sha256 "af629677a7387bfa3f3888bb02bf0dcf9c5b22921cd184cb2d5e2e82ec8d6451"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.18.2/ilc-0.18.2-linux_armv6"
        sha256 "5789ad0f5244fabf46d02114732abd2df3e6c55a1e1b276ddc27822c34a59ed6"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.18.2/ilc-0.18.2-linux_arm64"
        sha256 "ec65301ec773a11364313a7644553a84d516158b7d1ec3b20e642c187aef2abe"

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
