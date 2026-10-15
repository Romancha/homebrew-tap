cask "timelymeet" do
  version "1.6.2"
  sha256 "692440769560a1d6ca5ba7fe44f3b24b573b486d9e33f3cca8f844de25bd53fb"

  url "https://github.com/Romancha/timelymeet/releases/download/#{version}/TimelyMeet.dmg"
  name "TimelyMeet"
  desc "Fullscreen meeting alerts with one-click join"
  homepage "https://timelymeet.romancha.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "TimelyMeet.app"

  uninstall quit: "org.romancha.TimelyMeet"

  zap trash: [
    "~/Library/Application Scripts/org.romancha.TimelyMeet",
    "~/Library/Containers/org.romancha.TimelyMeet",
  ]
end
