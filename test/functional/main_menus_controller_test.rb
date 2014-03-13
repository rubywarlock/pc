require 'test_helper'

class MainMenusControllerTest < ActionController::TestCase
  setup do
    @main_menu = main_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_menu" do
    assert_difference('MainMenu.count') do
      post :create, main_menu: { mainmenuname: @main_menu.mainmenuname }
    end

    assert_redirected_to main_menu_path(assigns(:main_menu))
  end

  test "should show main_menu" do
    get :show, id: @main_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_menu
    assert_response :success
  end

  test "should update main_menu" do
    put :update, id: @main_menu, main_menu: { mainmenuname: @main_menu.mainmenuname }
    assert_redirected_to main_menu_path(assigns(:main_menu))
  end

  test "should destroy main_menu" do
    assert_difference('MainMenu.count', -1) do
      delete :destroy, id: @main_menu
    end

    assert_redirected_to main_menus_path
  end
end
