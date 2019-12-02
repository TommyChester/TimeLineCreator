require 'test_helper'

class CelestialBodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @celestial_body = celestial_bodies(:one)
  end

  test "should get index" do
    get celestial_bodies_url
    assert_response :success
  end

  test "should get new" do
    get new_celestial_body_url
    assert_response :success
  end

  test "should create celestial_body" do
    assert_difference('CelestialBody.count') do
      post celestial_bodies_url, params: { celestial_body: { mass: @celestial_body.mass, type: @celestial_body.type, volume: @celestial_body.volume } }
    end

    assert_redirected_to celestial_body_url(CelestialBody.last)
  end

  test "should show celestial_body" do
    get celestial_body_url(@celestial_body)
    assert_response :success
  end

  test "should get edit" do
    get edit_celestial_body_url(@celestial_body)
    assert_response :success
  end

  test "should update celestial_body" do
    patch celestial_body_url(@celestial_body), params: { celestial_body: { mass: @celestial_body.mass, type: @celestial_body.type, volume: @celestial_body.volume } }
    assert_redirected_to celestial_body_url(@celestial_body)
  end

  test "should destroy celestial_body" do
    assert_difference('CelestialBody.count', -1) do
      delete celestial_body_url(@celestial_body)
    end

    assert_redirected_to celestial_bodies_url
  end
end
