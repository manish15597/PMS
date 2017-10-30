require 'test_helper'

class StudentTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_team = student_teams(:one)
  end

  test "should get index" do
    get student_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_student_team_url
    assert_response :success
  end

  test "should create student_team" do
    assert_difference('StudentTeam.count') do
      post student_teams_url, params: { student_team: { student_id: @student_team.student_id, team_id: @student_team.team_id } }
    end

    assert_redirected_to student_team_url(StudentTeam.last)
  end

  test "should show student_team" do
    get student_team_url(@student_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_team_url(@student_team)
    assert_response :success
  end

  test "should update student_team" do
    patch student_team_url(@student_team), params: { student_team: { student_id: @student_team.student_id, team_id: @student_team.team_id } }
    assert_redirected_to student_team_url(@student_team)
  end

  test "should destroy student_team" do
    assert_difference('StudentTeam.count', -1) do
      delete student_team_url(@student_team)
    end

    assert_redirected_to student_teams_url
  end
end
