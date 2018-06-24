class Exercise_values
  include PageObject

  label(:value_1, id:'lbl_val_1')
  label(:value_2, id:'lbl_val_2')
  label(:value_3, id:'lbl_val_3')
  label(:value_4, id:'lbl_val_4')
  label(:value_5, id:'lbl_val_5')
  label(:total_bal, id:'lbl_ttl_val')
  text_field(:amount_1, id:'txt_val_1')
  text_field(:amount_2, id:'txt_val_2')
  text_field(:amount_4, id:'txt_val_4')
  text_field(:amount_5, id:'txt_val_5')
  text_field(:amount_6, id:'txt_val_6')
  text_field(:ttl_value, id:'txt_ttl_val')


  def balance (a)
  a.gsub("$","").gsub(",","").to_f.round(2) # converting the string amount into floating number up to 2 digits
  end

  def first_amount
    amount_1.gsub("$","").gsub(",","").to_f.round(2)
  end

  def second_amount
    amount_2.gsub("$","").gsub(",","").to_f.round(2)
  end

  def third_amount
    amount_4.gsub("$","").gsub(",","").to_f.round(2)
  end

  def fourth_amount
    amount_5.gsub("$","").gsub(",","").to_f.round(2)
  end

  def fifth_amount
    amount_6.gsub("$","").gsub(",","").to_f.round(2)
  end

  def total_amount
    ttl_value.gsub("$","").gsub(",","").to_f.round(2)
  end

end