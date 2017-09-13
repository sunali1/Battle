feature "Opposition hit points" do
  scenario 'Get hit points'do
    visit('/')
    fill_in (:name1), with: "Sunali"
    fill_in (:name2), with: "Rory"
    click_button "Submit"
    expect(page).to have_content "Sunali has 100 hitpoints and Rory has 200."
  end
end
