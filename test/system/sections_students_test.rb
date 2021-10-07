require "application_system_test_case"

class SectionsStudentsTest < ApplicationSystemTestCase
  setup do
    @sections_student = sections_students(:one)
  end

  test "visiting the index" do
    visit sections_students_url
    assert_selector "h1", text: "Sections Students"
  end

  test "creating a Sections students" do
    visit sections_students_url
    click_on "New Sections Students"

    fill_in "Section", with: @sections_student.section_id
    fill_in "Student", with: @sections_student.student_id
    click_on "Create Sections students"

    assert_text "Sections students was successfully created"
    click_on "Back"
  end

  test "updating a Sections students" do
    visit sections_students_url
    click_on "Edit", match: :first

    fill_in "Section", with: @sections_student.section_id
    fill_in "Student", with: @sections_student.student_id
    click_on "Update Sections students"

    assert_text "Sections students was successfully updated"
    click_on "Back"
  end

  test "destroying a Sections students" do
    visit sections_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sections students was successfully destroyed"
  end
end
