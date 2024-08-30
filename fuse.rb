# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fuse < Formula
  desc "The ultimate AI assistant for Platform Engineers, crafted by the Botkube Team."
  homepage "https://botkube.io/fuse"
  version "0.4.2"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/fuse-releases/releases/download/v0.4.2/fuse-darwin-amd64"
      sha256 "fe0e3087b2f54d61bdeda2b92537757d6d3892c025c101f86fae6a74f3ae0a0c"

      def install
        bin.install "fuse-darwin-amd64" => "fuse"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/fuse-releases/releases/download/v0.4.2/fuse-darwin-arm64"
      sha256 "4e0b6e050940f613ef547b8889df120e8cac98795fbd3ef1934db3fbcb9f23c1"

      def install
        bin.install "fuse-darwin-arm64" => "fuse"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/fuse-releases/releases/download/v0.4.2/fuse-linux-amd64"
        sha256 "171a5dd97bf19d1d4b16729a3257f2cd9752524e628796436f28432456f21c70"

        def install
          bin.install "fuse-linux-amd64" => "fuse"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/fuse-releases/releases/download/v0.4.2/fuse-linux-arm64"
        sha256 "ad72e4d38955fa52ba1446aa46ba807233a2bef22a58fe367dc1d50655c5713f"

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
