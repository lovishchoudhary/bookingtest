require 'test_helper'

class TimingsControllerTest < ActionController::TestCase
  setup do
    @timing = timings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timing" do
    assert_difference('Timing.count') do
      post :create, timing: { current_date: @timing.current_date, current_time: @timing.current_time, date_time: @timing.date_time }
    end

    assert_redirected_to timing_path(assigns(:timing))
  end

  test "should show timing" do
    get :show, id: @timing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timing
    assert_response :success
  end

  test "should update timing" do
    patch :update, id: @timing, timing: { current_date: @timing.current_date, current_time: @timing.current_time, date_time: @timing.date_time }
    assert_redirected_to timing_path(assigns(:timing))
  end

  test "should destroy timing" do
    assert_difference('Timing.count', -1) do
      delete :destroy, id: @timing
    end

    assert_redirected_to timings_path
  end
end
