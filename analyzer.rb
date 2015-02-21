lines = File.readlines("oliver.txt")
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, "").length
total_words = text.split().length
total_sentences = text.split(/\.|\?|!/).length
total_paragraphs = text.split(/\n\n/).length
stopwords = %w{the a by on for of are with just but and to the my I has some in}
new_text = text.split()
words = text.scan(/\w+/)
keywords = words.select do |word|
	!stopwords.include?(word)
end



puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters(excluding spaces)"
puts "#{total_words} words"
puts "#{keywords.length} keywords, #{((keywords.length.to_f/total_words.to_f)*100).round(2)} percent of total"
puts "#{total_sentences} sentences"
puts "#{total_paragraphs} paragraphs"
puts "#{total_sentences.to_f/total_paragraphs.to_f} sentences per paragraph"
puts "#{total_words.to_f/total_sentences.to_f} words per sentence"