# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ilc < Formula
  desc "A simple way to create a command-line utility."
  homepage "https://github.com/evilmarty/ilc"
  version "0.13.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/evilmarty/ilc/releases/download/v0.13.0/ilc-0.13.0-darwin_amd64"
      sha256 "2a2295265622145f40180228e6b25f1fe0f4aaad46c6248168975d4b7d3aafe9"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
    on_arm do
      url "https://github.com/evilmarty/ilc/releases/download/v0.13.0/ilc-0.13.0-darwin_arm64"
      sha256 "885ef12bb04111ce402d4e6b47284d98b1193bd2533d86c7dc3524a939e36567"

      def install
        bin.install Dir["*"].first => "ilc"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.13.0/ilc-0.13.0-linux_amd64"
        sha256 "16b9358edef9a640ee10595834f21daa633570fff83ba7825c9dafb7d87ed896"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.13.0/ilc-0.13.0-linux_armv6"
        sha256 "ab12c5c74384b73bdbc7badeba6e82146e087195cb2e0332dcc8c70930e975a9"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evilmarty/ilc/releases/download/v0.13.0/ilc-0.13.0-linux_arm64"
        sha256 "dce034d205204dc8c6d6011f52a73ccf381e43bae0700336a9d31ad2a517bfad"

        def install
          bin.install Dir["*"].first => "ilc"
        end
      end
    end
  end

  test do
    system "#{bin}/ilc", "--version"
  end
end
