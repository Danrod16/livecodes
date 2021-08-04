require_relative "../warthog"

describe Warthog do
  describe "#talk" do
    it "returns a sentence stating the worthog barks" do
      pumba = Warthog.new("Pumba")
      expect(pumba.talk).to eq("Pumba grunts")
    end
  end
end
