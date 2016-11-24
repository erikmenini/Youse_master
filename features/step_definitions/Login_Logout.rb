Given (/^I Login and Logout$/) do
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
And (/^I logout$/)do
  click_button 'zx8dc3ddgLcF9VhsbzbM', :with => "Teste"
  click_button 'track_logout'
end
Then (/^Registration completed$/) do
  expect(page).to have_content 'Minha Conta'
end
