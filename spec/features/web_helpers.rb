def sign_in_and_play
  visit ('/')
  fill_in (:name1), with: "Sunali"
  fill_in (:name2), with: "Rory"
  click_button "Submit"
end
