feature "Entering Names" do
    scenario 'Submitting Names' do
        visit('/')
        fill_in :player_1_name, with: 'Hafiz'
        fill_in :player_2_name, with: 'Dave'
        click_button('Submit')

        # save_and_open_page

        expect(page).to have_content "Hafiz vs. Dave"
    end
end