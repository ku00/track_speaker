# track_speaker

iTunesで流してる音楽のトラック名を喋らせるスクリプトです。  
VoiceText APIを使って喋らせてます。https://cloud.voicetext.jp/webapi

# Requirements

* Ruby 2.0.0p481
* SoX
* itunes-client 0.1.7 (https://github.com/takuminnnn/itunes-client)
* voice_text_api 0.0.3 (https://github.com/tdtds/voice_text_api)
* clockwork 0.7.7 (https://github.com/tomykaira/clockwork)

# Setup

```bash
$ git clone git@github.com:takuminnnn/track_speaker.git
```

```bash
$ brew install sox
$ gem install itunes-client
$ gem install voice_text_api
$ gem install clockwork
```

# Usage

```bash
$ clockwork clock.rb
```
