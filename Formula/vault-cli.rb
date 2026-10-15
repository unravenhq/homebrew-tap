class VaultCli < Formula
  desc "Command-line interface for Unraven Vault"
  homepage "https://www.npmjs.com/package/@unraven/vault-cli"
  url "https://registry.npmjs.org/@unraven/vault-cli/-/vault-cli-1.0.6.tgz"
  sha256 "c5663abc7201460a30e4d6bfd4b55994efb9750a2b67c0a09ae5bfa48b5331f1"
  license "MIT"

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    (bin/"vault").write_env_script libexec/"bin/vault", PATH: "#{formula_opt_bin("node@24")}:$PATH"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vault --version")
  end
end
