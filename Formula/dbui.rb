# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dbui < Formula
  desc "Interactive terminal user interface and CLI for database connections. MySQL, PostgreSQL. More to come."
  homepage "https://github.com/kenanbek/dbui"
  version "0.1.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/KenanBek/dbui/releases/download/v0.1.3/dbui_Darwin_x86_64.tar.gz"
    sha256 "171a0ac5791ee01e5d7d33d3f037bf1ff91eacf456ccd13fd946afd014d44769"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/KenanBek/dbui/releases/download/v0.1.3/dbui_Linux_x86_64.tar.gz"
    sha256 "0958575930b61efc2febdb0f1dd1f2c1a3cbe284b8de317dbd1e8b7015370f8b"
  end

  def install
    bin.install "dbui"
  end

  test do
    system "#{bin/dbui}"
  end
end
