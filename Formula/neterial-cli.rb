class NeterialCli < Formula
  desc "CLI for Neterial services"
  homepage "https://docs.neterial.io/#/CLI"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/neterialio/cli/releases/download/v0.1.0/neterial-v0.1.0-darwin-arm64.tar.gz"
    sha256 "2fc62ac8911520afc52c337707a3d6983076a950f5807bdc29742d8310653a20"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/neterialio/cli/releases/download/v0.1.0/neterial-v0.1.0-linux-amd64.tar.gz"
    sha256 "f19fee64ea24b769d4997d470c025072346da269dbeec57ffcb8c8c449cfe990"
  end

  def install
    bin.install "neterial"

    generate_completions_from_executable(bin/"neterial", "completion", shells: [:bash, :zsh, :fish])
  end
end
