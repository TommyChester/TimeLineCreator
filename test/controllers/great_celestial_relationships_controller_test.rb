require 'test_helper'

class GreatCelestialRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @great_celestial_relationship = great_celestial_relationships(:one)
  end

  test "should get index" do
    get great_celestial_relationships_url
    assert_response :success
  end

  test "should get new" do
    get new_great_celestial_relationship_url
    assert_response :success
  end

  test "should create great_celestial_relationship" do
    assert_difference('GreatCelestialRelationship.count') do
      post great_celestial_relationships_url, params: { great_celestial_relationship: { angle_east_west: @great_celestial_relationship.angle_east_west, angle_north_south_rad: @great_celestial_relationship.angle_north_south_rad, arm: @great_celestial_relationship.arm, cluster: @great_celestial_relationship.cluster, distance_from_end_star_log: @great_celestial_relationship.distance_from_end_star_log, distance_from_glactic_core_log: @great_celestial_relationship.distance_from_glactic_core_log, galaxy: @great_celestial_relationship.galaxy, supercluster: @great_celestial_relationship.supercluster } }
    end

    assert_redirected_to great_celestial_relationship_url(GreatCelestialRelationship.last)
  end

  test "should show great_celestial_relationship" do
    get great_celestial_relationship_url(@great_celestial_relationship)
    assert_response :success
  end

  test "should get edit" do
    get edit_great_celestial_relationship_url(@great_celestial_relationship)
    assert_response :success
  end

  test "should update great_celestial_relationship" do
    patch great_celestial_relationship_url(@great_celestial_relationship), params: { great_celestial_relationship: { angle_east_west: @great_celestial_relationship.angle_east_west, angle_north_south_rad: @great_celestial_relationship.angle_north_south_rad, arm: @great_celestial_relationship.arm, cluster: @great_celestial_relationship.cluster, distance_from_end_star_log: @great_celestial_relationship.distance_from_end_star_log, distance_from_glactic_core_log: @great_celestial_relationship.distance_from_glactic_core_log, galaxy: @great_celestial_relationship.galaxy, supercluster: @great_celestial_relationship.supercluster } }
    assert_redirected_to great_celestial_relationship_url(@great_celestial_relationship)
  end

  test "should destroy great_celestial_relationship" do
    assert_difference('GreatCelestialRelationship.count', -1) do
      delete great_celestial_relationship_url(@great_celestial_relationship)
    end

    assert_redirected_to great_celestial_relationships_url
  end
end
