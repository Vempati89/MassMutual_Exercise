class Exercise_values
  include PageObject

  text_field(:value_1, label:'lbl_val_1')
  text_field(:value_2, label:'lbl_val_2')
  text_field(:value_3, label:'lbl_val_3')
  text_field(:value_4, label:'lbl_val_4')
  text_field(:value_5, label:'lbl_val_5')
  text_field(:total_bal, label:'lbl_ttl_val')
  text_field(:amount_1, text:'txt_val_1')
  text_field(:amount_2, text:'txt_val_2')
  text_field(:amount_4, text:'txt_val_4')
  text_field(:amount_5, text:'txt_val_5')
  text_field(:amount_6, text:'txt_val_6')
  text_field(:ttl_value, text:'txt_ttl_val')


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