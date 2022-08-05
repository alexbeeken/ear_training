FLAT_KEY_SYLLABLES = [
  "do",
  "ra",
  "re",
  "me",
  "mi",
  "fa",
  "se",
  "so",
  "le",
  "la",
  "te",
  "ti",
]

SHARP_KEY_SYLLABLES = [
  "do",
  "di",
  "re",
  "ri",
  "mi",
  "fa",
  "fi",
  "so",
  "si",
  "la",
  "li",
  "ti",
]

puts "welcome to solfege practice!"

puts "type s for sharp key, f for flat key, any other input will randomly choose one"
key_style = gets

if key_style == "s"
  syllables = SHARP_KEY_SYLLABLES
elsif key_style == "f"
  syllables = FLAT_KEY_SYLLABLES
else
  syllables = [SHARP_KEY_SYLLABLES, FLAT_KEY_SYLLABLES].sample
end

count = 0

puts "how many would you like to do?"
end_count = gets.to_i
chosen_syllables = []

puts "starting from do..."
while count < end_count
  current_syllable = syllables.sample
  chosen_syllables << current_syllable

  puts "sing nearest #{current_syllable}"
  count += 1
  continue = gets
end

puts chosen_syllables.join " "
puts "ALL DONE!"
