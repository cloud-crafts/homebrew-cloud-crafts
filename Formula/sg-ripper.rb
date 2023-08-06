# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SgRipper < Formula
  desc "AWS Security Group and ENI cleaner.."
  homepage "https://github.com/cloud-crafts/sg-ripper"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cloud-crafts/sg-ripper/releases/download/v0.1.0/sg-ripper-0.1.0-darwin-amd64.tar.gz"
      sha256 "630fe01e61a697f119abeec604e8653391dc2fe769beda550f29bacc0d8938d1"

      def install
        bin.install "bin/sg-ripper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cloud-crafts/sg-ripper/releases/download/v0.1.0/sg-ripper-0.1.0-darwin-arm64.tar.gz"
      sha256 "3df3ab42f6f41d7da6aa2c390ce92bfcd16d03923908b38f2518e8cd1621a76a"

      def install
        bin.install "bin/sg-ripper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cloud-crafts/sg-ripper/releases/download/v0.1.0/sg-ripper-0.1.0-linux-armv6.tar.gz"
      sha256 "331ab80d2986984985a8b2a0e3a960d93dbd47cbebecfdea2885b412acefa982"

      def install
        bin.install "bin/sg-ripper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cloud-crafts/sg-ripper/releases/download/v0.1.0/sg-ripper-0.1.0-linux-amd64.tar.gz"
      sha256 "258ee7e6262080e0ab4b0c468dab93305add80c993eef1fc75ec7050942b5c5c"

      def install
        bin.install "bin/sg-ripper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cloud-crafts/sg-ripper/releases/download/v0.1.0/sg-ripper-0.1.0-linux-arm64.tar.gz"
      sha256 "ddda403bd92900278c1f23ffe494559b02b2b7371ea1ca37696ff178f3079489"

      def install
        bin.install "bin/sg-ripper"
      end
    end
  end

  test do
    system "#{bin}/sg-ripper", "--help"
  end
end
