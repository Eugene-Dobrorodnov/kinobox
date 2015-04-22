module FilmsHelper
  def get_years_list
    (1900..Time.now.year + 20).to_a
  end
end
