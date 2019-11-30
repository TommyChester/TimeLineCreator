require 'test_helper'

class RelativeTimeSpacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relative_time_space = relative_time_spaces(:one)
  end

  test "should get index" do
    get relative_time_spaces_url
    assert_response :success
  end

  test "should get new" do
    get new_relative_time_space_url
    assert_response :success
  end

  test "should create relative_time_space" do
    assert_difference('RelativeTimeSpace.count') do
      post relative_time_spaces_url, params: { relative_time_space: { epoch: @relative_time_space.epoch, epochtime: @relative_time_space.epochtime } }
    end

    assert_redirected_to relative_time_space_url(RelativeTimeSpace.last)
  end

  test "should show relative_time_space" do
    get relative_time_space_url(@relative_time_space)
    assert_response :success
  end

  test "should get edit" do
    get edit_relative_time_space_url(@relative_time_space)
    assert_response :success
  end

  test "should update relative_time_space" do
    patch relative_time_space_url(@relative_time_space), params: { relative_time_space: { epoch: @relative_time_space.epoch, epochtime: @relative_time_space.epochtime } }
    assert_redirected_to relative_time_space_url(@relative_time_space)
  end

  test "should destroy relative_time_space" do
    assert_difference('RelativeTimeSpace.count', -1) do
      delete relative_time_space_url(@relative_time_space)
    end

    assert_redirected_to relative_time_spaces_url
  end
end
