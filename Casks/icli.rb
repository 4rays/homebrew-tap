cask "icli" do
  version "0.2.0"
  sha256 "5f0bd1c804a200ec4ba13adaa3c60e9c586539b4989dc400cecde49dac04ab9d"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
