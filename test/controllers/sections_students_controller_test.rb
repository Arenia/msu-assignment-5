require 'test_helper'

class SectionsStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sections_student = sections_students(:one)
  end

  test "should get index" do
    get sections_students_index_url
    assert_response :success
  end

  test "should get new" do
    get new_sections_student_url
    assert_response :success
  end

  test "should create sections_student" do
    assert_difference('SectionsStudents.count') do
      post sections_students_index_url, params: { sections_student: { section_id: @sections_student.section_id, student_id: @sections_student.student_id } }
    end

    assert_redirected_to sections_student_url(SectionsStudents.last)
  end

  test "should show sections_student" do
    get sections_student_url(@sections_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_sections_student_url(@sections_student)
    assert_response :success
  end

  test "should update sections_student" do
    patch sections_student_url(@sections_student), params: { sections_student: { section_id: @sections_student.section_id, student_id: @sections_student.student_id } }
    assert_redirected_to sections_student_url(@sections_student)
  end

  test "should destroy sections_student" do
    assert_difference('SectionsStudents.count', -1) do
      delete sections_student_url(@sections_student)
    end

    assert_redirected_to sections_students_index_url
  end
end
