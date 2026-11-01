class Specfork < Formula
  desc "Find, compose and build from app specs"
  homepage "https://specfork.dev"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Specfork/specfork/releases/download/v0.1.0/specfork_darwin_arm64.tar.gz"
      sha256 "ee4fb8c3aad0973890050f65514897431fbc331b3e43688dae189b7f9dd0d5dc"
    else
      url "https://github.com/Specfork/specfork/releases/download/v0.1.0/specfork_darwin_amd64.tar.gz"
      sha256 "4daf557a0c7252c1737c56d48ecbfd613546c99ef1eb49940b2bc90096368de3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Specfork/specfork/releases/download/v0.1.0/specfork_linux_arm64.tar.gz"
      sha256 "7444e5c9bd0b25d96fa757b365cdbc5d528d8a83265972e336c70988d847d6d8"
    else
      url "https://github.com/Specfork/specfork/releases/download/v0.1.0/specfork_linux_amd64.tar.gz"
      sha256 "316e7b30fe8fc2772023ce0a3d839b0d1f31d2fb70be4a2531b4e570f6bac813"
    end
  end

  def install
    bin.install "specfork"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specfork --version")
  end
end
