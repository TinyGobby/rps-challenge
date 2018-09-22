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

  scenario 'after choosing "Paper" see confirmation' do
    sign_in_and_play
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content('You chose Paper')
  end

  scenario 'after choosing "Scissors" see confirmation' do
    sign_in_and_play
    choose('Scissors')
    click_button('Submit')
    expect(page).to have_content('You chose Scissors')
  end
end
