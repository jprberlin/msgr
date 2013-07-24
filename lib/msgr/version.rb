module Msgr
  module VERSION
    MAJOR = 0
    MINOR = 0
    PATCH = 1
    STAGE = nil
    STRING = [MAJOR, MINOR, PATCH, STAGE].reject(&:nil?).join('.')

    def self.to_s; STRING end
  end
end
