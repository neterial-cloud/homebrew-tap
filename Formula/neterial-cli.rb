class NeterialCli < Formula
  desc "CLI for Neterial services"
  homepage "https://docs.neterial.cloud/guides/cli"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/neterial-cloud/cli/releases/download/v0.4.0/neterial-v0.4.0-darwin-arm64.tar.gz"
    sha256 "49ba0e76fe9ecfb347af25d939788c2dbe578896ae0f56d862d0ef55d0b434c7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/neterial-cloud/cli/releases/download/v0.4.0/neterial-v0.4.0-linux-amd64.tar.gz"
    sha256 "0ebf953a63c4cadb99f52b1d254a97f389878718cf178aa0b206524c891639e8"
  end

  def install
    bin.install "neterial"

    generate_completions_from_executable(bin/"neterial", "completion", shells: [:bash, :zsh, :fish])
  end
end
