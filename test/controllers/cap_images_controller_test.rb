require 'test_helper'

class CapImagesControllerTest < ActionController::TestCase
  setup do
    @cap_image = cap_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cap_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cap_image" do
    assert_difference('CapImage.count') do
      post :create, cap_image: { like_count: @cap_image.like_count, url: @cap_image.url }
    end

    assert_redirected_to cap_image_path(assigns(:cap_image))
  end

  test "should show cap_image" do
    get :show, id: @cap_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cap_image
    assert_response :success
  end

  test "should update cap_image" do
    patch :update, id: @cap_image, cap_image: { like_count: @cap_image.like_count, url: @cap_image.url }
    assert_redirected_to cap_image_path(assigns(:cap_image))
  end

  test "should destroy cap_image" do
    assert_difference('CapImage.count', -1) do
      delete :destroy, id: @cap_image
    end

    assert_redirected_to cap_images_path
  end
end
