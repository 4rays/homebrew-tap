cask "icli" do
  version "0.1.4"
  sha256 "475bc56d379a07c0c8757fd02093741124035f7d9ca8b8e392493a13c6ec0665"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
