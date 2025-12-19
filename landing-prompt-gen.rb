class LandingPromptGen < Formula
  desc "Generate filled prompts from templates by fetching API data"
  homepage "https://github.com/amir78729/figma-make-landing-prompt-generator"
  url "https://github.com/amir78729/figma-make-landing-prompt-generator/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "88c2f6f7bbb134386034516757215e349466a63884433a03b4184d01bb576cc5"
  version "0.0.2"

  def install
    bin.install "generate-prompt.sh" => "landing-prompt-gen"
    pkgshare.install "templates"
  end

  test do
    system "#{bin}/landing-prompt-gen", "--help"
  end
end
