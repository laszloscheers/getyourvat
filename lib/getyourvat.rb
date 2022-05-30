# frozen_string_literal: true

require_relative "getyourvat/version"
require "singleton"

module Getyourvat
  class Calculate
    include Singleton
    def self.getyourvat(vat, subtotal)
      subtotal + (subtotal * vat / 100)
    end
  end

  class Error < StandardError; end
end
puts(Getyourvat::Calculate.getyourvat(20,100))