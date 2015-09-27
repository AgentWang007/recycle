require_relative 'view'
require_relative 'parser'

class Controller
  include Parser
  attr_reader :array, :list

  def initialize
    @view = View.new
    @list = {}
  end

  def run
    sites = []
    @view.welcome
    @view.enter_boroughs
    borough = @view.input.capitalize
    exit(borough)
    list = Parser.load_data
    list.select!{|bin| bin["borough"] == borough}
    @view.list_of_sites(list)
      if list.count == 0
         abort("Sorry. Recycling is just IMPOSSIBLE.")
      end

    @view.enter_site_type
    type = @view.input.capitalize
    exit(type)
    list.select!{|bin|
      bin["site_type"] == type}

    list.select!{|bin| sites << (bin["park_site_name"])}
    @view.display_parks(sites)

      @view.enter_park_site_name
      park = @view.input.capitalize
      exit(park)
      list.select!{|bin|
        bin["park_site_name"] == park}
      list.each{|bin| @view.addresses_at_site(bin["address"])}
  end

  def exit(term)
    if term == "Exit"
      abort("Thanks for NOT recycling... jerk.")
    end
  end

  def impossible
     abort("Sorry. Recycling is just IMPOSSIBLE.") if list.count == 0
  end

end

user = Controller.new
user.run


