class Grimoire < Formula
  desc "Skills package manager for AI agents"
  homepage "https://github.com/jeffreytse/grimoire"
  url "https://github.com/jeffreytse/grimoire.git",
      revision: "998c8e2b93388ebde7fbecdea89f5f21ffa97a26"
  version "0.0.0-998c8e2"
  license "MIT"
  head "https://github.com/jeffreytse/grimoire.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"grimoire", "--help"
  end
end
