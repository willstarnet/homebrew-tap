class Tenantctl < Formula
  desc "Microsoft 365 tenant administration CLI over Microsoft Graph"
  homepage "https://github.com/willstarnet/tenantctl"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.1/tenantctl-darwin-arm64.tar.gz"
      sha256 "4487d10e87d2ed1dd26db6ea34f826c9eb3ff1cb77ded0ad8ee1ca7eb52fc8c4"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.1/tenantctl-darwin-x64.tar.gz"
      sha256 "761aa0fd777b0660e0e66cf2aca0990201fe65519365b9eec63b54536dbcd3e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.1/tenantctl-linux-arm64.tar.gz"
      sha256 "90ca280244970119e0a4b1a9c6f24f81a9999d303990a2ffe30ac973db1f808b"
    end
    on_intel do
      url "https://github.com/willstarnet/tenantctl/releases/download/v0.2.1/tenantctl-linux-x64-baseline.tar.gz"
      sha256 "c033b94f156412579125663847611cab9ae971b941cb823734b11f44fe6012ac"
    end
  end

  def install
    bin.install "tenantctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tenantctl --version")
  end
end
