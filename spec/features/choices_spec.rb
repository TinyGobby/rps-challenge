feature 'choices' do
  scenario 'after inputting names you are given the choice of which move you want' do
    sign_in_and_play
    expect(page).to have_content('Rock Paper Scissors')
  end
  
  scenario 'after choosing "Rock" see confirmation' do
    sign_in_and_play
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('You chose Rock')
  end
end
