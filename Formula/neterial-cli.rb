class NeterialCli < Formula
  desc "CLI for Neterial services"
  homepage "https://docs.neterial.io/#/CLI"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/neterialio/cli/releases/download/v0.2.0/neterial-v0.2.0-darwin-arm64.tar.gz"
    sha256 "01785d73f4b0ad5920a15b0bc4096d445f9b68fb118f554ff7bf3c670b1a3192"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/neterialio/cli/releases/download/v0.2.0/neterial-v0.2.0-linux-amd64.tar.gz"
    sha256 "5d1b805f1a05fd5832df760ad24e880480a168e6f2e72a3397fb06693b9a068b"
  end

  def install
    bin.install "neterial"

    generate_completions_from_executable(bin/"neterial", "completion", shells: [:bash, :zsh, :fish])
  end
end
