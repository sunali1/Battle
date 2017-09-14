feature "Confirm and attack" do
  scenario "Can attack and check" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Sunali attacked Rory"
  end
end
