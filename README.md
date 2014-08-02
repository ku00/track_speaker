# track_speaker

iTunesで流してる音楽のトラック名を喋らせるスクリプトです。

# Requirements

* Ruby 2.0.0p481
* SoX
* itunes-client (https://github.com/takuminnnn/itunes-client)
* voice_text_api (https://github.com/tdtds/voice_text_api)
* clockwork (https://github.com/tomykaira/clockwork)

# Setup

```bash
$ git clone git@github.com:takuminnnn/track_speaker.git
```

```bash
$ brew install sox
```

`itunes-client` はカスタマイズしたものを使うので[specific_install](https://github.com/rdp/specific_install)というgemを使ってインストールする。

```bash
$ gem specific_install https://github.com/takuminnnn/itunes-client.git
$ gem install voice_text_api
$ gem install clockwork
```

# Usage

```bash
$ clockwork clock.rb
```
