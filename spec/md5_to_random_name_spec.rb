# frozen_string_literal: true

require "digest/md5"

RSpec.describe Md5ToRandomName do
  let(:valid_md5) { Digest::MD5.hexdigest("test") }  # "098f6bcd4621d373cade4e832627b4f6"
  let(:another_valid_md5) { Digest::MD5.hexdigest("test2") }

  it "has a version number" do
    expect(Md5ToRandomName::VERSION).not_to be nil
  end

  describe ".generate" do
    it "generates a name with the expected format" do
      result = described_class.generate(valid_md5)
      expect(result).to match(/\A\w+-\w+-[a-f0-9]{6}\z/i)
    end

    it "generates consistent results for the same MD5" do
      expect(described_class.generate(valid_md5)).to eq(described_class.generate(valid_md5))
    end

    it "generates different results for different MD5 hashes" do
      expect(described_class.generate(valid_md5)).not_to eq(described_class.generate(another_valid_md5))
    end

    it "extracts the last 6 characters of the MD5 as suffix" do
      result = described_class.generate(valid_md5)
      expect(result).to end_with(valid_md5[-6..-1])
    end

    it "raises InvalidMd5Hash for non-MD5 inputs" do
      expect { described_class.generate("not-a-valid-md5") }.to raise_error(Md5ToRandomName::InvalidMd5Hash)
      expect { described_class.generate(nil) }.to raise_error(Md5ToRandomName::InvalidMd5Hash)
      expect { described_class.generate(123) }.to raise_error(Md5ToRandomName::InvalidMd5Hash)
    end

    it "accepts custom word lists" do
      custom_adjectives = ["special"]
      custom_animals = ["tiger"]
      result = described_class.generate(valid_md5, custom_adjectives, custom_animals)
      expect(result).to start_with("special-tiger-")
    end
  end

  describe Md5ToRandomName::Generator do
    let(:generator) { described_class.new }
    let(:custom_generator) { described_class.new(["custom"], ["animal"]) }

    it "generates a name for a valid MD5 hash" do
      result = generator.generate(valid_md5)
      expect(result).to match(/\A\w+-\w+-[a-f0-9]{6}\z/i)
    end

    it "raises InvalidMd5Hash for non-MD5 inputs" do
      expect { generator.generate("invalid") }.to raise_error(Md5ToRandomName::InvalidMd5Hash)
    end

    it "uses custom word lists if provided" do
      result = custom_generator.generate(valid_md5)
      expect(result).to start_with("custom-animal-")
    end

    it "produces deterministic results" do
      first = generator.generate(valid_md5)
      second = generator.generate(valid_md5)
      expect(first).to eq(second)
    end
  end
end