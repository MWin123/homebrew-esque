cask "kafkaesque" do
  version "2.4.2"
  sha256 "da777b5c83b601cf12b1cbd461fb7204a58790714dcaca96f6c6c25583e4997c"

  url "https://github.com/MWin123/KafkaEsque/releases/download/v2.4.2/kafkaesque-2.4.2.dmg"
  name "KafkaEsque"
  desc "GUI for Apache Kafka"
  homepage "https://github.com/patschuh/KafkaEsque"

  app "KafkaEsque.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/KafkaEsque.app"],
                   sudo: false
  end
end
