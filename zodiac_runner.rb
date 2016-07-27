require_relative("./zodiac")

class ZodiacRunner

  def initialize()
    run_horoscope()
  end

  def run_horoscope()
    puts "Welcome to Alan and Pavlos' Zodiac Test."
    get_persons_birthday()
    get_zodiac_sign(@user)
  end

  def get_persons_birthday()
    puts "Please enter your date of birth (e.g. 04-05-2001)"
    @user = Person.new(gets.chomp)
  end

  def get_zodiac_sign(birthday)
    puts "Your zodiac sign is #{@user.zodiac_sign[:sign]}, #{@user.zodiac_sign[:decan]}. This is a #{@user.element_sign} sign."
  end

end

horoscope = ZodiacRunner.new()