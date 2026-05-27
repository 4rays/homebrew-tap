cask "icli" do
  version "0.1.5"
  sha256 "74bb73614d9e1c71bdf2114e3a88875c22eb503b5bc79809aec20fbc6cba8043"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
