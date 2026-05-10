cask "icli" do
  version "0.1.3"
  sha256 "dbb7e7e6127f9178123a524584bceadb8f7a50076ba3e984f331544d8ace16d7"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
