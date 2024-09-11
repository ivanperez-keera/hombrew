class Copilot < Formula
  homepage "https://github.com/nasa-sw-vnv/ikos"
  url "https://github.com/NASA-SW-VnV/ikos/archive/refs/tags/v3.3.tar.gz"
  sha256 "27b26dede55cbbda2c090d268db430dd64c01c663ea185c1a07e4c95eda15cd5"
  license "NOSA"
  revision 1

  depends_on "cabal-install" => :build
  depends_on "ghc@9.8" => :build

  def install
    system "cabal", "update"
    system "cabal", "install", "--verbose", "--lib", *std_cabal_v2_args, "copilot"
    system "ls"
    system "pwd"
    man1.install "copilot.1"
  end

end
