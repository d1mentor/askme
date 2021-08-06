module UsersHelper
  def declination(amount, form1, form2, form3)
    remainder_of_10 = amount % 10

    if (amount % 100).between?(11, 14)
      "#{amount} #{form3}"
    elsif remainder_of_10 == 1
      "#{amount} #{form1}"
    elsif (remainder_of_10).between?(2, 4)
      "#{amount} #{form2}"
    else
      "#{amount} #{form3}"
    end
  end
end
