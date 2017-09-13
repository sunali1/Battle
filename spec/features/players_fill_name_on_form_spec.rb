feature "Players fill in names" do
  scenario "Can submit names" do
  visit ('/')
  fill_in (:name1), with: "Sunali"
  fill_in (:name2), with: "Rory"
  click_button "Submit"
  expect(page).to have_content "Sunali Vs Rory"
end
end
