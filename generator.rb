require 'builder'

class OPMLGenerator
  def opml
    @xml = Builder::XmlMarkup.new indent: 2
    @xml.instruct! :xml, version: '1.0', encoding: 'UTF-8', standalone: 'yes'
    @xml.opml do
      head
      body
    end
  end

  def head
    @xml.head do
      @xml.title 'PodcastAddict registration feeds'
      @xml.dateCreated 'Nov 15, 2014 12:56:14 AM'
      @xml.dateModified 'Nov 15, 2014 12:56:14 AM'
    end
  end

  def body
    @xml.body do
      outline '99Vidas',
              'http://feeds.feedburner.com/99vidaspodcast',
              'http://99vidas.com.br/?p='

      outline 'Braincast',
              'http://feeds.feedburner.com/braincastmp3',
              'http://www.brainstorm9.com.br'
    end
  end

  def outline(title, xml, html)
    @xml.outline(
      'text'    => title,
      'type'    => 'rss',
      'xmlUrl'  => xml,
      'htmlUrl' => html
    )
  end
end
