def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Hafiz'
    fill_in :player_2_name, with: 'Tanya'
    click_button('Submit')
end