class View

  def welcome
     system 'clear'
    puts "d8888b. d88888b  .o88b. db    db  .o88b.    db      db    db
88  `8D 88'     d8P  Y8 `8b  d8' d8P  Y8    88      `8b  d8'
88oobY' 88ooooo 8P       `8bd8'  8P         88       `8bd8'
88`8b   88~~~~~ 8b         88    8b         88         88
88 `88. 88.     Y8b  d8    88    Y8b  d8 db 88booo.    88
88   YD Y88888P  `Y88P'    YP     `Y88P' VP Y88888P    YP

                                                             "
  puts "Welcome to recyc.ly! The best app for your recycling desires."
  puts ""

  end

  def enter_boroughs
    puts "Enter an NYC Borough (or exit to quit):"
  end

  def input
    gets.chomp
  end

  def enter_site_type
    puts "\nEnter a site type, e.g. 'greenthumb', 'outdoor', 'indoor', 'subproperty':"
  end

  def enter_park_site_name
    puts "\nEnter the park or site name; otherwise, hit 'enter' to exit:"
  end

  def list_of_sites(list)
    puts "\n \nThere are #{list.size} sites in your borough."
  end

  def display_parks(list)
    puts "\n\nThere are #{list.size} sites. They are:\n\n"
    thing = list.uniq
    thing.each do |site|
    puts "#{site}"
   end
 end

  def addresses_at_site(site)
    puts "\n There is a recycling bin located at #{site}"
  end

  def display(bin)
    puts bin
  end

end
