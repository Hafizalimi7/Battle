feature "View hit points" do
  scenario "see Player 2 hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Hafiz'
    fill_in :player_2_name, with: 'Dave'
    click_button('Submit')
    expect(page).to have_content "Dave: 100HP"
  end
end
