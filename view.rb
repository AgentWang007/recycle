class View

  def welcome
    puts ""
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
    puts "Enter a site type, e.g. 'greenthumb', 'outdoor', 'indoor', 'subproperty':"
  end

  def list_of_sites
    puts "These are the list of sites near you. Where would you like to recycle?"
    #display all sites
  end

  def addresses_at_site(site)
    puts "There are #{site.count} recycling bins at this site at #{site}"
    # display all address
  end

  def display(results)
    puts results
  end

end
