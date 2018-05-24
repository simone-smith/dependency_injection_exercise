require 'note_formatter'

describe NoteFormatter do
  describe '#format(note)' do
    it 'formats a note' do
      note_double = double("note")
      allow(note_double).to receive_messages(:title => "title", :body => "body")
      expect(subject.format(note_double)).to eq "Title: #{note_double.title}\n#{note_double.body}"
    end
  end
end
