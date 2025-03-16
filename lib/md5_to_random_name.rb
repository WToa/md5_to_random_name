# frozen_string_literal: true

require_relative "md5_to_random_name/version"
require_relative "word_lists"

module Md5ToRandomName
  class Error < StandardError; end
  class InvalidMd5Hash < Error; end

  class Generator
    def initialize(adjectives = WordLists::ADJECTIVES, animals = WordLists::ANIMALS)
      @adjectives = adjectives
      @animals = animals
    end

    def generate(md5)
      validate_md5!(md5)

      adjective = select_adjective(md5)
      animal = select_animal(md5)
      hash_suffix = extract_suffix(md5)

      format_name(adjective, animal, hash_suffix)
    end

    private

    def validate_md5!(md5)
      unless md5.is_a?(String) && md5.match?(/\A[a-f0-9]{32}\z/i)
        raise InvalidMd5Hash, "Invalid MD5 hash: #{md5.inspect}"
      end
    end

    def select_adjective(md5)
      index = md5[0...8].to_i(16) % @adjectives.size
      @adjectives[index]
    end

    def select_animal(md5)
      index = md5[8...16].to_i(16) % @animals.size
      @animals[index]
    end

    def extract_suffix(md5)
      md5[-6..-1]
    end

    def format_name(adjective, animal, suffix)
      "#{adjective}-#{animal}-#{suffix}"
    end
  end

  def self.generate(md5, adjectives = WordLists::ADJECTIVES, animals = WordLists::ANIMALS)
    Generator.new(adjectives, animals).generate(md5)
  end
end