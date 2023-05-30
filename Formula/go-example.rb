# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoExample < Formula
  desc "Example"
  homepage "https://github.com/profiprog/go-example"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/profiprog/go-example/releases/download/v0.1.1/go-example_v0.1.1_darwin_arm64.tar.gz"
      sha256 "04d2a43943090d349c6bf21acb7a64376ac112198c23d2740f94a05a47dcc653"

      def install
        bin.install "go-example"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/profiprog/go-example/releases/download/v0.1.1/go-example_v0.1.1_darwin_amd64.tar.gz"
      sha256 "dbc32c013533a85cf042b708ddbd79de3f19cc58945c085f63f60fe5bb592cfd"

      def install
        bin.install "go-example"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/profiprog/go-example/releases/download/v0.1.1/go-example_v0.1.1_linux_arm64.tar.gz"
      sha256 "6d8e56d4d8524408c815e43b0b338eb59586aa2124267d3700417e9972a16559"

      def install
        bin.install "go-example"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/profiprog/go-example/releases/download/v0.1.1/go-example_v0.1.1_linux_amd64.tar.gz"
      sha256 "337486a51be608ca4768d48a7f8553d930ca4ea70a80174121cb447fd7eb55cf"

      def install
        bin.install "go-example"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/profiprog/go-example
    EOS
  end

  test do
    system "#{bin}/go-example"
  end
end
