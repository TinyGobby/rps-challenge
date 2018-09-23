feature 'confirmation' do
  xscenario 'see computer choice' do
    # expect(game).to receive(:computer_choice).and_return('Rock')
    sign_in_and_play
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('The computer chose Rock')
  end

  xscenario 'see winner declared' do
    # expect(game).to receive(:computer_choice).and_return('Rock')
    sign_in_and_play
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('Patrick wins!')
  end
end
