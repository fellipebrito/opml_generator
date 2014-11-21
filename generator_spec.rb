require './generator.rb'

describe OPMLGenerator do
  it 'generates the desired OPML' do
    generator = OPMLGenerator.new
    xml_expected  = File.read('example.opml')
    expect(generator.opml).to eql(xml_expected)
  end
end
