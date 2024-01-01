class CaesarCipher

  def self.caesar_cipher(text, factor)
    down_arr = ('a'..'z').to_a
    caps_arr = ('A'..'Z').to_a
    text.chars.map do |c|
      if down_arr.include?(c)
        get_index(down_arr, c, factor)
      elsif caps_arr.include?(c)
        get_index(caps_arr, c, factor)
      else
        c
      end
    end.join
  end

  def self.get_index(chosen_arr, character, factor)
    c_index = chosen_arr.find_index(character)
    if c_index >= 20
      remain = factor - (26 - c_index)
      chosen_arr[remain]
    else
      chosen_arr[c_index + factor]
    end
  end
end

# CaesarCipher.caesar_cipher("What a string!", 5)
