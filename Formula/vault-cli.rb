class VaultCli < Formula
  desc "Command-line interface for Unraven Vault"
  homepage "https://www.npmjs.com/package/@unraven/vault-cli"
  url "https://registry.npmjs.org/@unraven/vault-cli/-/vault-cli-1.0.3.tgz"
  sha256 "5e16419edbe9fe8f5e64250cc165ab72e3bc3127a4500711d1bdd88c8cc99cb9"
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
