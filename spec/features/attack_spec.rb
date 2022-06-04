feature 'Attacking' do
  scenario 'PLAYER 1 ATTATCKED PLAYER 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Next'
    expect(page).not_to have_content 'Tanya: 100HP'
    expect(page).to have_content 'Tanya: 80HP'
  end
end

feature 'Attack' do
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Next'
    click_button 'Attack'
    expect(page).to have_content 'Tanya attacked Hafiz'
  end
end

