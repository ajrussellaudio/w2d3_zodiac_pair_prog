class Person

  attr_reader :birth_date

  def initialize(birth_date)
    @birth_date = birth_date
  end

  # def zodiac_sign()
  #   change_string_to_time()
  # end

  def birth_date_as_time()
    array = @birth_date.split('-')
    output = []
    for number in array
      output << number.to_i
    end
    output.reverse!
    return Time.new(output[0], output[1], output[2])
  end

  def zodiac_sign()
    birthday = birth_date_as_time
    zodiac = [ "Sagittarius", "Capricorn", "Aquarius", "Pisces", "Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius" ]
    @zodiac_sign = {}
    if birthday.day < 22
      @zodiac_sign[:sign] = zodiac[birthday.month - 1]
    else
      @zodiac_sign[:sign] = zodiac[birthday.month]
    end
    # decans bit
    @zodiac_sign[:decan] = add_decans()
    return @zodiac_sign
  end

  def add_decans()
    birthday = birth_date_as_time
    if birthday.day > 22
      return "1st decan"
    elsif birthday.day <= 10
      return "2nd decan"
    else
      return "3rd decan"
    end
  end

  def element_sign()
    # if @zodiac_sign[:sign] == "Leo"
    #   @element = "Fire"
    # else
    case zodiac_sign[:sign]
    when "Leo", "Aries", "Sagittarius"
      @element_sign = "Fire"
    when "Gemini", "Libra", "Aquarius"
      @element_sign = "Air"
    when "Pisces", "Cancer", "Scorpio"
      @element_sign = "Water"
    when "Capricorn", "Taurus", "Virgo"
      @element_sign = "Earth"
    end
    return @element_sign


  end

end