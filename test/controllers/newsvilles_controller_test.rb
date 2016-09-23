require 'test_helper'

class NewsvillesControllerTest < ActionController::TestCase
  setup do
    @newsville = newsvilles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsvilles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsville" do
    assert_difference('Newsville.count') do
      post :create, newsville: { body: @newsville.body, image_url: @newsville.image_url, time: @newsville.time, title: @newsville.title, title_url: @newsville.title_url }
    end

    assert_redirected_to newsville_path(assigns(:newsville))
  end

  test "should show newsville" do
    get :show, id: @newsville
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsville
    assert_response :success
  end

  test "should update newsville" do
    patch :update, id: @newsville, newsville: { body: @newsville.body, image_url: @newsville.image_url, time: @newsville.time, title: @newsville.title, title_url: @newsville.title_url }
    assert_redirected_to newsville_path(assigns(:newsville))
  end

  test "should destroy newsville" do
    assert_difference('Newsville.count', -1) do
      delete :destroy, id: @newsville
    end

    assert_redirected_to newsvilles_path
  end
end
