feature "Players fill in names" do
  scenario "Can submit names" do
  sign_in_and_play
  expect(page).to have_content "Sunali Vs Rory"
end
end
