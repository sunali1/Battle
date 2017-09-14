feature "Opposition hit points" do
  scenario 'Get hit points'do
    sign_in_and_play
    expect(page).to have_content "Rory: 200HP"
  end
end
