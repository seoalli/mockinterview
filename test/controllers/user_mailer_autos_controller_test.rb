require 'test_helper'

class UserMailerAutosControllerTest < ActionController::TestCase
  setup do
    @user_mailer_auto = user_mailer_autos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_mailer_autos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_mailer_auto" do
    assert_difference('UserMailerAuto.count') do
      post :create, user_mailer_auto: {  }
    end

    assert_redirected_to user_mailer_auto_path(assigns(:user_mailer_auto))
  end

  test "should show user_mailer_auto" do
    get :show, id: @user_mailer_auto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_mailer_auto
    assert_response :success
  end

  test "should update user_mailer_auto" do
    patch :update, id: @user_mailer_auto, user_mailer_auto: {  }
    assert_redirected_to user_mailer_auto_path(assigns(:user_mailer_auto))
  end

  test "should destroy user_mailer_auto" do
    assert_difference('UserMailerAuto.count', -1) do
      delete :destroy, id: @user_mailer_auto
    end

    assert_redirected_to user_mailer_autos_path
  end
end
