require 'active_support'
require 'active_support/core_ext/string/strip.rb'
require 'rspec/matchers'
require 'equivalent-xml'
require './generator.rb'

describe OPMLGenerator do
  it 'generates the desired OPML' do
    generator = OPMLGenerator.new
    xml_expected = <<-EOS.strip_heredoc
      <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
      <opml>
        <head>
          <title>PodcastAddict registration feeds</title>
          <dateCreated>Nov 15, 2014 12:56:14 AM</dateCreated>
          <dateModified>Nov 15, 2014 12:56:14 AM</dateModified>
        </head>
        <body>
          <outline text="99Vidas" type="rss" xmlUrl="http://feeds.feedburner.com/99vidaspodcast" htmlUrl="http://99vidas.com.br/?p="/>
          <outline text="Braincast" type="rss" xmlUrl="http://feeds.feedburner.com/braincastmp3" htmlUrl="http://www.brainstorm9.com.br" />
        </body>
      </opml>
    EOS

    expect(generator.opml).to be_equivalent_to(xml_expected)
  end
end
# <outline text="Escriba Cafe" type="rss" xmlUrl="http://www.escribacafe.com/feed/podcast" htmlUrl="http://www.escribacafe.com" />
# <outline text="Giant Robots Smashing into other Giant Robots Podcast" type="rss" xmlUrl="http://simplecast.fm/podcasts/271/rss" htmlUrl="" />
# <outline text="Healthy Hacker" type="rss" xmlUrl="http://www.healthyhacker.com/feed.xml" htmlUrl="http://www.healthyhacker.com/" />
# <outline text="Nerdcast" type="rss" xmlUrl="http://jovemnerd.ig.com.br/categoria/nerdcast/feed/rss" htmlUrl="http://jovemnerd.com.br" />
# <outline text="RapaduraCast" type="rss" xmlUrl="http://feeds.feedburner.com/rapaduracast" htmlUrl="http://www.cinemacomrapadura.com.br/rapaduracast" />
# <outline text="Serial" type="rss" xmlUrl="http://feeds.serialpodcast.org/serialpodcast" htmlUrl="http://serialpodcast.org" />
# <outline text="The Ruby Rogues" type="rss" xmlUrl="http://rubyrogues.com/podcast.rss" htmlUrl="http://rubyrogues.com" />
