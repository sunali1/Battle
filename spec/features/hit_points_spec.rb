feature "Opposition hit points" do
  scenario 'Get hit points'do
    sign_in_and_play
    expect(page).to have_content "Rory has 200."
  end
end
