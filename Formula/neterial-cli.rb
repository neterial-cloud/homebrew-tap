class NeterialCli < Formula
  desc "CLI for Neterial services"
  homepage "https://docs.neterial.io/#/CLI"
  version "0.3.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/neterialio/cli/releases/download/v0.3.0/neterial-v0.3.0-darwin-arm64.tar.gz"
    sha256 "bb4fb33c393032a950421160a0a6e77047e190552db631464954ba045048f89e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/neterialio/cli/releases/download/v0.3.0/neterial-v0.3.0-linux-amd64.tar.gz"
    sha256 "68fe2bbdf18ff7cbd2b704719d3be20b70be5621c0d50f87cd3b9b11769203bc"
  end

  def install
    bin.install "neterial"

    generate_completions_from_executable(bin/"neterial", "completion", shells: [:bash, :zsh, :fish])
  end
end
