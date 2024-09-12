class Copilot < Formula
  homepage "https://github.com/copilot-language/copilot"
  license "0BSD"
  revision 1
  version "4.0"
  url "https://github.com/ivanperez-keera/copilot/archive/refs/heads/develop-homebrew.tar.gz"
  sha256 "2addad1ce0bfea20598b9d84866bee47e12118bcaa11f3a7a041e397fae00063"

  depends_on "cabal-install" => :build
  depends_on "ghc@9.8" => :build

  def install
    system "cabal", "update"
    system "cabal", "install", "--verbose", "--lib", *std_cabal_v2_args, "copilot"
    man1.install "doc/copilot.1"
  end

end
