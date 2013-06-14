require 'test_helper'

class GettingmailsControllerTest < ActionController::TestCase
  setup do
    @gettingmail = gettingmails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gettingmails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gettingmail" do
    assert_difference('Gettingmail.count') do
      post :create, gettingmail: { count: @gettingmail.count, createdate: @gettingmail.createdate, details: @gettingmail.details, title: @gettingmail.title }
    end

    assert_redirected_to gettingmail_path(assigns(:gettingmail))
  end

  test "should show gettingmail" do
    get :show, id: @gettingmail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gettingmail
    assert_response :success
  end

  test "should update gettingmail" do
    put :update, id: @gettingmail, gettingmail: { count: @gettingmail.count, createdate: @gettingmail.createdate, details: @gettingmail.details, title: @gettingmail.title }
    assert_redirected_to gettingmail_path(assigns(:gettingmail))
  end

  test "should destroy gettingmail" do
    assert_difference('Gettingmail.count', -1) do
      delete :destroy, id: @gettingmail
    end

    assert_redirected_to gettingmails_path
  end
end
