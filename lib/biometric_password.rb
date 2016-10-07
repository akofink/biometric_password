require 'json'

WORD_LIST = JSON.parse(File.read('data/biometric_word_list.json'))

class BiometricPassword
  def self.create(num_words: 6)
    SecureRandom.hex(num_words).scan(/\w\w/).to_enum.with_index(1).map do |k, i|
      WORD_LIST[k.upcase][i % 2]
    end.join(' ')
  end
end
