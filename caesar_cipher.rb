def is_lowercase_letter(ascii_code)
    ascii_code >= 97 && ascii_code <= 122
end

def add_and_wrap(a, b, max)
    a + b > max ? a + b - max : a + b
end

def caesar_cipher(string, shift_factor)
    buffer = ""
    for char in string.split('') do
        if !is_lowercase_letter(char.downcase.ord)
            buffer << char
        else
            shifted_ascii_code = add_and_wrap(char.downcase.ord() - 97, shift_factor, 25) + 97
            buffer << (is_lowercase_letter(char.ord) ? shifted_ascii_code.chr() : shifted_ascii_code.chr.upcase())
        end
    end

    return buffer
end
