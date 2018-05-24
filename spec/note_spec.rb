require 'note'

describe Note do

  describe '#display' do
    it 'displays a formatted note' do
      formatter_double = double :formatter
      note = Note.new("title", "body", formatter_double)
      allow(formatter_double).to receive(:format).and_return "Fred"
      expect(note.display).to eq "Fred"
    end
  end

end
