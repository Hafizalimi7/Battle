 

feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'the start of the game' do
      sign_in_and_play()
      expect(page).to have_content "Hafiz's turn"
    end
    
    scenario 'after player 1 attacks' do 
      sign_in_and_play()
      click_button 'Attack'
      click_button 'Next'
    #   expect(page).not_to have_content "Hafiz's turn"
      expect(page).to have_content "Tanya's turn"
    end
  end
end