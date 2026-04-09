cask "macjobs" do
  version "0.1.0"
  sha256 "b7550646f23bc4d1799f180065ef24e612bccb86508cedd55f311e44924a57c6"

  url "https://github.com/yborunov/macjobs/releases/download/v#{version}/MacJobs-v#{version}.zip"
  name "MacJobs"
  desc "SwiftUI dashboard for recurring launchd jobs"
  homepage "https://github.com/yborunov/macjobs"

  depends_on macos: ">= :ventura"

  app "MacJobs.app"
end
