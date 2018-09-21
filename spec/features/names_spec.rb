feature 'Names' do
  scenario 'You can register your name before playing' do
    visit '/'
    fill_in('player_name', with: 'Patrick')
    click_button 'Submit'
    expect(page).to have_content 'Welcome Patrick, what is your move?'
  end
end
