require 'yaml'
require_relative 'str'

class Ball
  ANSWERS = YAML.load_file('answers.yml')
  @len = ANSWERS.length

  def shake
    idx = rand(@len)
    val = ANSWERS[idx]

    case idx / 5
    when 0 then puts val.blue
    when 1 then puts val.green
    when 2 then puts val.yellow
    else puts val.red
    end

    val
  end
end
