# feature 'Attacking' do
#   scenario 'reduce Player 2 HP by 20' do
#     sign_in_and_play
#     click_button 'Attack'
#     click_link 'Next'
#     expect(page).not_to have_content 'Tanya: 100HP'
#     expect(page).to have_content 'Tanya: 80HP'
#   end
# end