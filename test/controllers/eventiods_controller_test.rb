require 'test_helper'

class EventiodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventiod = eventiods(:one)
  end

  test "should get index" do
    get eventiods_url
    assert_response :success
  end

  test "should get new" do
    get new_eventiod_url
    assert_response :success
  end

  test "should create eventiod" do
    assert_difference('Eventiod.count') do
      post eventiods_url, params: { eventiod: { description: @eventiod.description, long_descrip: @eventiod.long_descrip, name: @eventiod.name } }
    end

    assert_redirected_to eventiod_url(Eventiod.last)
  end

  test "should show eventiod" do
    get eventiod_url(@eventiod)
    assert_response :success
  end

  test "should get edit" do
    get edit_eventiod_url(@eventiod)
    assert_response :success
  end

  test "should update eventiod" do
    patch eventiod_url(@eventiod), params: { eventiod: { description: @eventiod.description, long_descrip: @eventiod.long_descrip, name: @eventiod.name } }
    assert_redirected_to eventiod_url(@eventiod)
  end

  test "should destroy eventiod" do
    assert_difference('Eventiod.count', -1) do
      delete eventiod_url(@eventiod)
    end

    assert_redirected_to eventiods_url
  end
end
