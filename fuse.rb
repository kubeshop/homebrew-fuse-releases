# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fuse < Formula
  desc "The ultimate AI assistant for Platform Engineers, crafted by the Botkube Team."
  homepage "https://botkube.io"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/fuse-releases/releases/download/v0.2.0/fuse-darwin-amd64"
      sha256 "efcdff73d4b01038bae888131bc592e793c0a97a7283893d8f45feed406e6723"

      def install
        bin.install "fuse-darwin-amd64" => "fuse"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/fuse-releases/releases/download/v0.2.0/fuse-darwin-arm64"
      sha256 "5b2ec4c67e29db6979debbe6f0f23d2bfbdcf75c970f795dfc2dbbfd02a78170"

      def install
        bin.install "fuse-darwin-arm64" => "fuse"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/fuse-releases/releases/download/v0.2.0/fuse-linux-amd64"
        sha256 "66bc023169cde968245ed9895cc954d944e964462713a6a4461f16ec15e7366d"

        def install
          bin.install "fuse-linux-amd64" => "fuse"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/fuse-releases/releases/download/v0.2.0/fuse-linux-arm64"
        sha256 "342bdc2710c416c682454548cd5e4d621031372418e39c830293fb6678dc933c"

        def install
          bin.install "fuse-linux-arm64" => "fuse"
        end
      end
    end
  end

  test do
    system "#{bin}/fuse version"
  end
end
