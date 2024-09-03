class Base62
    ALPHABET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".freeze
    BASE = ALPHABET.length
    
    def self.encode(number)
        result = ""
        while number > 0
          answer = number / 62
          remainder = number % 62
          result = ALPHABET[remainder] + result
          number = answer
        end
        result
    end

    def self.decode(string)
        result = 0
        string.reverse.each_char.with_index do |char, index|
          result += ALPHABET.index(char) * (BASE ** index)
        end
        result
    end



end