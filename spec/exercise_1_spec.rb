require 'exercise_1'

describe Note do
  let(:note_formatter) { double("Formatter", :format => "Title: A title\nA body")}
  let(:subject) { described_class.new("A title", "A body", note_formatter)}

  it "calls format on formatter when displaying" do
    expect(note_formatter).to receive(:format)
    subject.display
  end

  it 'displays formatted text' do
    expect(subject.display).to eq("Title: A title\nA body")
  end
end

describe NoteFormatter do
  let(:note) { double("Note", :title => "A title", :body => "A body") }

  it "formats and prints note" do
    expect(subject.format(note)).to eq("Title: A title\nA body")
  end
end
