feature "Confirm and attack" do
  scenario "Can attack and check" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Sunali attacked Rory"
  end
  scenario "Reduce player 2 hit point by 10" do
    sign_in_and_play
    click_link "Attack"
    click_link "OK"
    expect(page).to have_content "Rory: 190HP"
    expect(page).not_to have_content "Rory: 200HP"
  end
end
