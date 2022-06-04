feature "Entering Names" do
    scenario 'Submitting Names' do
        sign_in_and_play
        expect(page).to have_content "Hafiz vs Tanya"
    end
end