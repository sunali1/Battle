def sign_in_and_play
  visit ('/')
  fill_in (:player_1_name), with: "Sunali"
  fill_in (:player_2_name), with: "Rory"
  click_button "Submit"
end
