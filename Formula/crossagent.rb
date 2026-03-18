# typed: false
# frozen_string_literal: true

# This formula is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class Crossagent < Formula
  desc "Cross-model AI agent orchestrator with browser-based Web UI"
  homepage "https://github.com/grikwong/crossagent"
  license "AGPL-3.0-or-later"

  # GoReleaser will populate the url, sha256, and version on release.
  # Placeholder values below — do not install until a release is published.
  version "1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/grikwong/crossagent/releases/download/v#{version}/crossagent_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/grikwong/crossagent/releases/download/v#{version}/crossagent_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grikwong/crossagent/releases/download/v#{version}/crossagent_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/grikwong/crossagent/releases/download/v#{version}/crossagent_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "crossagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crossagent --version", 2)
  end
end
