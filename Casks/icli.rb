cask "icli" do
  version "0.2.2"
  sha256 "e075ceee835ca8da30cbe17f4e51fd6540a14f8c0746d7a8c1a84ab58f7f04ec"

  url "https://github.com/4rays/icli/releases/download/v#{version}/iCLI-#{version}.zip"
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"
end
