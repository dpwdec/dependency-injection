require 'exercise_2'

describe Diary do

  let(:entry) { double("an entry", title: "My title", body: "My body") }
  let(:entry_class) { double("entry class", new: entry) }
  let(:subject) { described_class.new(entry_class) }

  describe "#add" do
    it "returns title of added entry" do
      expect(entry).to receive(:title)
      subject.add("A title", "A body")
      subject.index
    end
  end
end
