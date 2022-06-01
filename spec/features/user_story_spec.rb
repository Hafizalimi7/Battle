feature "So I can see how close i am to winnning" do
    scenario "I want to see Player 2's Hit Points" do
        visit('/')
        fill_in :player_1_name, with: 'Hafiz'
        fill_in :player_2_name, with: 'Dave'
        click_button('Submit')
        expect(page).to have_content "Dave: 60HP"
    end
end