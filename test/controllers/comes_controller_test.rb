require 'test_helper'

class ComesControllerTest < ActionController::TestCase
  setup do
    @come = comes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create come" do
    assert_difference('Come.count') do
      post :create, come: { content: @come.content, game_id: @come.game_id }
    end

    assert_redirected_to come_path(assigns(:come))
  end

  test "should show come" do
    get :show, id: @come
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @come
    assert_response :success
  end

  test "should update come" do
    patch :update, id: @come, come: { content: @come.content, game_id: @come.game_id }
    assert_redirected_to come_path(assigns(:come))
  end

  test "should destroy come" do
    assert_difference('Come.count', -1) do
      delete :destroy, id: @come
    end

    assert_redirected_to comes_path
  end
end
