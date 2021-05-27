# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dbui < Formula
  desc "Interactive terminal user interface and CLI for database connections. MySQL, PostgreSQL. More to come."
  homepage "https://github.com/kenanbek/dbui"
  version "0.1.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/KenanBek/dbui/releases/download/v0.1.1/dbui_Darwin_x86_64.tar.gz"
    sha256 "dff4374311a81afb393ca50d694d5fc86ad6102df099b9498198d5a3bdb5bbeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/KenanBek/dbui/releases/download/v0.1.1/dbui_Linux_x86_64.tar.gz"
    sha256 "124784010013f1bb32c78eef4db9e3dda1fb4b1572d4554542de8d5f357712f1"
  end

  def install
    bin.install "dbui"
  end

  test do
    system "#{bin/dbui}"
  end
end
