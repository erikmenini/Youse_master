Given (/^I go to the Youse quotation page after login$/) do
 visit 'https://www.youse.com.br/account'
end

When (/^I login in my account$/) do
  fill_in 'email', :with => "testeeeee@teste.com.br"
  click_button 'commit'
  sleep(inspection_time = 15)
  fill_in 'user_password', :with => "12345678"
  click_button 'commit'
  sleep(inspection_time = 15)
end
And (/^Login sucessful$/)do
  expect(page).to have_content 'Login efetuado com sucesso.'
end
And (/^I go to the quotation page$/)do
  visit 'https://www.youse.com.br/auto/order/new'
end
And (/^I fill my name$/) do
  fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_name', :with => "Teste"
  find('#auto_order_flow_lead_person_data[insured_person_attributes][same_as_lead_person]').find(:xpath, "//*[@id='auto_order_flow_lead_person_data_insured_person_attributes_same_as_lead_person']/option[2]").select_option
  fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_phone', :with=> "32999056789"
  fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_email', :with=> "testeeeee@teste.com.br"
end
And (/^I click in the about auto$/)do
  click_button 'commit'
  sleep(inspection_time = 15)
end
And (/^I fill about the car$/) do
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][make]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_make']/option[2]").select_option
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][model]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_model']/option[5]").select_option
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][year]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_year']/option[4]").select_option
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][version]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_version']/option[3]").select_option
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][usage]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_usage']/option[2]").select_option
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][purchased]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_purchased']/option[3]").select_option
  find('#auto_order_flow_pricing_requirements[vehicle_attributes][collected]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_vehicle_attributes_collected']/option[3]").select_option
  fill_in 'auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode', :with=> "36036646"
  find('#auto_order_flow_pricing_requirements[driver_attributes][same_as_insured_person]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person']/option[1]").select_option
  find('#auto_order_flow_pricing_requirements[driver_attributes][gender]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_driver_attributes_gender']/option[2]").select_option
  fill_in 'auto_order_flow_pricing_requirements_driver_attributes_date_of_birth', :with=> "24101990"
  find('#auto_order_flow_pricing_requirements[driver_attributes][years_since_last_claim]').find(:xpath, "//*[@id='auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim']/option[2]").select_option
end
And (/^I click in the next step button$/)do
  click_button 'commit'
  sleep(inspection_time = 15)
end

And (/^I click in to continue$/)do
  click_button 'commit'
  sleep(inspection_time = 15)
end
Then (/^i am in the last page$/)do
  expect(page).to have_content 'Aeee! Estamos quase lá.'
end
