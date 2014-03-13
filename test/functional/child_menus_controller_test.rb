require 'test_helper'

class ChildMenusControllerTest < ActionController::TestCase
  setup do
    @child_menu = child_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_menu" do
    assert_difference('ChildMenu.count') do
      post :create, child_menu: { childmenuname: @child_menu.childmenuname, mainmenu_id: @child_menu.mainmenu_id }
    end

    assert_redirected_to child_menu_path(assigns(:child_menu))
  end

  test "should show child_menu" do
    get :show, id: @child_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_menu
    assert_response :success
  end

  test "should update child_menu" do
    put :update, id: @child_menu, child_menu: { childmenuname: @child_menu.childmenuname, mainmenu_id: @child_menu.mainmenu_id }
    assert_redirected_to child_menu_path(assigns(:child_menu))
  end

  test "should destroy child_menu" do
    assert_difference('ChildMenu.count', -1) do
      delete :destroy, id: @child_menu
    end

    assert_redirected_to child_menus_path
  end
end
