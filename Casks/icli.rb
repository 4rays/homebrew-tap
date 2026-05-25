cask "icli" do
  version "0.1.4"
  sha256 "7f170a8080354bfd6e7772e8601b8a88aa6ff52e253907cf7f2240dde694c748"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
