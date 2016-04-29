require_relative 'view'
require_relative 'rat'

class Controller

  attr_reader :view, :rat

  def initialize
    @rat = Rat.new
    @view = View.new
    run
  end

  def run
    system('clear')
    view.banner
    view.welcome
    view.display_zip_prompt
    zip = view.input
    until !zip.is_a?(Integer) && zip.length != 5
      total = rat.total_inspected(zip)
      result = rat.total_failed(zip)
      percentage = rat.result_percentage(result,total)
      level= rat.rat_scale(percentage)
      view.display_result(result,total,percentage)
      ratness(level)
      view.loading
      view.repeat
      zip = view.input
    end
  end

  def ratness(level)
    case level
    when 1
      view.display_level_1
    when 2
      view.display_level_2
    when 3
      view.display_level_3
    when 4
      view.display_level_4
    when 5
      view.display_level_5
    end
  end

end
