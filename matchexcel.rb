require 'csv'
def main()
	canvas_ex = ARGV[0]
	test_ex = ARGV[1]
	canvas_hash = {}
	grades = {}
	final_hash = {}
	
	final_hash = clean_test(test_ex,clean_og(canvas_ex,canvas_hash))
	puts final_hash
	excel_out(final_hash)

end


#gets wnumbers and sets the scores to all zero
def clean_og(canvas_ex,hash)
	CSV.foreach(canvas_ex) do |row|	
		if row[2] != nil 
			if row[2].include? "F" 
				hash[row[2]] = 0
			end			
		end
	end
	
	return hash
end
# we pass in our test file with the new clean canvas hash structure
def clean_test(test_ex,canvasHash)
	CSV.foreach(test_ex) do |row|	
		#if to skip any titles 
		if row[2].include? "F"
			#if statement to verify there's a score in that column r
			if row[5] != nil && row[5].length <=3 
				#replaces zeroes with scores
				canvasHash[row[2]] = [row[5]]

			end
		end		
	end
	

	return canvasHash
end


def excel_out(hash)
CSV.open("fixed_book.csv", "wb") {|csv| hash.to_a.each {|elem| csv << elem} }

	
end


main()