require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "ask form renders" do
    visit ask_url
    assert_selector "input#question"
    has_button? "Ask"
  end

  test "asking question elicits puzzled response from coach" do
    visit ask_url
    fill_in "question", with: "Who are you?"
    take_screenshot
    click_on "Ask"

    assert_selector "blockquote.coach-answer", text: "Silly question, get dressed and go to work!"
  end
end
