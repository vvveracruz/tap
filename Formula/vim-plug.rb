class VimPlug < Formula
  desc "Minimalist Vim plugin manager"
  homepage "https://github.com/junegunn/vim-plug"
  url "https://github.com/junegunn/vim-plug.git",
      revision: "4c4e56b5f7384369927a075804b6a17de7644edd"
  version "0.0.0-4c4e56b"
  license "MIT"
  head "https://github.com/junegunn/vim-plug.git", branch: "master"

  def install
    pkgshare.install "plug.vim"
  end

  def caveats
    <<~EOS
      Load vim-plug by adding this to the top of your ~/.vimrc:
        source #{opt_pkgshare}/plug.vim
    EOS
  end

  test do
    assert_path_exists pkgshare/"plug.vim"
  end
end
