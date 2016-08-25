module CustomersHelper
  def formatted_date(date)
    date.strftime("%b %d, %Y")
  end
  def formatted_date_time(datetime)
    datetime.strftime("%b %d,%Y %H:%M:%S")
  end
end
