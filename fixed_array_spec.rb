require_relative "fixed_array"
require "pry"

describe FixedArray do
  let(:size) { 5 }
  let(:fixed_array) { FixedArray.new(size) }

  describe "#new" do
    it "is instatiated with space for 'size' elements" do
      expect(fixed_array.array.length).to be size
    end
  end

  describe "#get" do
    let(:test_value) { "A test value" }

    context "there is no element at the specified index" do
      let(:out_of_bounds) { size + 1 }

      it "throws an OutOfBoundsException" do
        expect { fixed_array.get(out_of_bounds) }.to raise_error(OutOfBoundsException)
      end
    end
  end

  describe "#set" do
    let(:test_value) { "A test value" }

    context "there is an element at the specified index" do
      it "sets a value in array at the specified index with the specified value" do
        expect(fixed_array.get(0)).to be_nil
        fixed_array.set(0, test_value)
        expect(fixed_array.get(0)).to eq test_value
      end
    end

    context "there is no element at the specified index" do
      let(:out_of_bounds) { size + 1 }

      it "throws an OutOfBoundsException" do
        expect { fixed_array.set(out_of_bounds, test_value) }.to raise_error(OutOfBoundsException)
      end
    end
  end
end
