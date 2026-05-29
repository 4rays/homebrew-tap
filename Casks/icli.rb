cask "icli" do
  version "0.2.3"
  sha256 "a5ac21b9c845e474f2690db4125c3179ffb4331b270264c5ba4e9566446da6ee"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
