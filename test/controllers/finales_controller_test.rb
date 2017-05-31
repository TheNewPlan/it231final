require 'test_helper'

class FinalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finale = finales(:one)
  end

  test "should get index" do
    get finales_url
    assert_response :success
  end

  test "should get new" do
    get new_finale_url
    assert_response :success
  end

  test "should create finale" do
    assert_difference('Finale.count') do
      post finales_url, params: { finale: { date: @finale.date, network: @finale.network, rating: @finale.rating, series: @finale.series, share: @finale.share, viewership: @finale.viewership } }
    end

    assert_redirected_to finale_url(Finale.last)
  end

  test "should show finale" do
    get finale_url(@finale)
    assert_response :success
  end

  test "should get edit" do
    get edit_finale_url(@finale)
    assert_response :success
  end

  test "should update finale" do
    patch finale_url(@finale), params: { finale: { date: @finale.date, network: @finale.network, rating: @finale.rating, series: @finale.series, share: @finale.share, viewership: @finale.viewership } }
    assert_redirected_to finale_url(@finale)
  end

  test "should destroy finale" do
    assert_difference('Finale.count', -1) do
      delete finale_url(@finale)
    end

    assert_redirected_to finales_url
  end
end
