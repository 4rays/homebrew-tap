cask "icli" do
  version "0.2.4"
  sha256 "b68b717c8f363cb70abd2e85019be60697d84b0fca321794d319d6d287f50c9e"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
