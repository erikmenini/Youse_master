Given (/^I go to the Youse registration page$/) do
 visit 'https://www.youse.com.br/users/sign_up'
end

When (/^I fill the register fields$/) do
  fill_in 'user_name', :with => "Erik"
  fill_in 'user_email', :with => "erikmenini@gmail.com"
  fill_in 'user_password', :with => "34524352"
  fill_in 'user_password_confirmation', :with => "34524352"
end

And (/^I click in register$/) do
  click_button 'commit'
  sleep(inspection_time = 15)
end

Then (/^Registration completed$/) do
  expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'
end
