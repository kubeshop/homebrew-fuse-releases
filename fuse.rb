# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fuse < Formula
  desc "The ultimate AI assistant for Platform Engineers, crafted by the Botkube Team."
  homepage "https://botkube.io"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/fuse-releases/releases/download/v0.3.1/fuse-darwin-amd64"
      sha256 "c20c18ae2260f21999a38941ead5f9e65457c0031ed16fb2f67c6e639cfc0853"

      def install
        bin.install "fuse-darwin-amd64" => "fuse"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/fuse-releases/releases/download/v0.3.1/fuse-darwin-arm64"
      sha256 "06e61bba58d3599dc13a3174c214c146b0843eb3e016037fc43fbe3eec03e7a2"

      def install
        bin.install "fuse-darwin-arm64" => "fuse"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/fuse-releases/releases/download/v0.3.1/fuse-linux-amd64"
        sha256 "03ad39410842ead7cc2cbacbc2f2955c65a0985f0f1b617e9013e69ae92d966f"

        def install
          bin.install "fuse-linux-amd64" => "fuse"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/fuse-releases/releases/download/v0.3.1/fuse-linux-arm64"
        sha256 "77023f445627eb6ad77d52ffc6895c7f4dfcf45fc0b70f9f92d7bf0f0ef04ee5"

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
