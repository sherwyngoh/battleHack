require 'test_helper'

class MemorialsControllerTest < ActionController::TestCase
  setup do
    @memorial = memorials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memorials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memorial" do
    assert_difference('Memorial.count') do
      post :create, memorial: { about: @memorial.about, contact_email: @memorial.contact_email, contact_number: @memorial.contact_number, dob: @memorial.dob, dod: @memorial.dod, funeral: @memorial.funeral, funeral_date: @memorial.funeral_date, guestbook: @memorial.guestbook, name: @memorial.name, race: @memorial.race, religion: @memorial.religion, theme: @memorial.theme, wake: @memorial.wake, wake_date: @memorial.wake_date }
    end

    assert_redirected_to memorial_path(assigns(:memorial))
  end

  test "should show memorial" do
    get :show, id: @memorial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memorial
    assert_response :success
  end

  test "should update memorial" do
    patch :update, id: @memorial, memorial: { about: @memorial.about, contact_email: @memorial.contact_email, contact_number: @memorial.contact_number, dob: @memorial.dob, dod: @memorial.dod, funeral: @memorial.funeral, funeral_date: @memorial.funeral_date, guestbook: @memorial.guestbook, name: @memorial.name, race: @memorial.race, religion: @memorial.religion, theme: @memorial.theme, wake: @memorial.wake, wake_date: @memorial.wake_date }
    assert_redirected_to memorial_path(assigns(:memorial))
  end

  test "should destroy memorial" do
    assert_difference('Memorial.count', -1) do
      delete :destroy, id: @memorial
    end

    assert_redirected_to memorials_path
  end
end
