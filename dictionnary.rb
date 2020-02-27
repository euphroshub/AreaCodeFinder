#area code dictionnary

#  to update using this link
# https://fr.wikipedia.org/wiki/Liste_des_indicatifs_r%C3%A9gionaux_canadiens

# eventually add city by code number in the program.

#key element dans le hash
dial_book = {
    "Alberta" => "403 780",
    "British-Columbia" => "604 236 250 778",
    "Prince-Edward island" => "902",
    "Manitoba" => "204",
    "New-Brunswick" => "506",
    "New Scotland" => "902",
    "Ontario" => "905 519 289 705 613 807 416 647",
    "Quebec" => "438 514 450 579 418 581 819 873",
    "Saskatchewan" => "306",
    "Newfoundland" => "709",
    "North-Western Territory" => "867",
    "Yukon" => "867",
  }
   
  # Get city names from the hash
  def get_city_names(somehash)
    somehash.keys
  end
   
  # Get area code based on given hash and key
  def get_area_code(somehash, key)
    somehash[key]
  end
   
  # Execution flow
  loop do
    puts "Regional Codes for phone numbers in Canada by Province"
    puts "Do you want to lookup an area code based on a Province ? (Y/N)"
    answer = gets.chomp.downcase 
    break if answer != "y"
    puts "Wich province do you want to lookup an area code for ? "
    puts get_city_names(dial_book)
    puts "Enter your selection: "
    prompt = gets.chomp
    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "You entered an invalid province."
    end
  end