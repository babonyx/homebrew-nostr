class Nak < Formula
  desc "Nostr Army Knife"
  homepage "https://nak.nostr.com/"
  url "https://github.com/fiatjaf/nak.git",
      tag:      "v0.7.5",
      revision: "8a934cc76bb36165b7d7e87cf27d425af5a1c203"
  head "https://github.com/fiatjaf/nak.git", branch: "master"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/nak", "-h"
  end
end
