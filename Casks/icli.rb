cask "icli" do
  version "0.2.1"
  sha256 "97b18c2615f7ca448ba0733164058d09942c36ef90b43d1b927eb34bc4f3b75a"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
