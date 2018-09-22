feature 'Names' do
  scenario 'you can register your name before playing' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Patrick, what is your move?'
  end
end
