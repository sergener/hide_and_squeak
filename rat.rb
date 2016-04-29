require_relative 'parse'

class Rat
  include Parse

  def total_inspected(zip)
    total = parse_all(zip)
    total[0].values.join.to_f
  end

  def total_failed(zip)
    result = parse_result(zip)
    result[0].values.join.to_f
  end

  def result_percentage(result, total)
    (result.fdiv(total) * 100).round(2)
  end

  def rat_scale(percentage)
    case percentage
      when 0...15
        1
      when 15...30
        2
      when 30...45
        3
      when 45...60
        4
      when 60..100
        5
      end
  end

end
