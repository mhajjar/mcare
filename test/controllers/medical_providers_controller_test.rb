require 'test_helper'

class MedicalProvidersControllerTest < ActionController::TestCase
  setup do
    @medical_provider = medical_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_provider" do
    assert_difference('MedicalProvider.count') do
      post :create, medical_provider: { City: @medical_provider.City, Specialty: @medical_provider.Specialty, Zip: @medical_provider.Zip, street: @medical_provider.street, string: @medical_provider.string }
    end

    assert_redirected_to medical_provider_path(assigns(:medical_provider))
  end

  test "should show medical_provider" do
    get :show, id: @medical_provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_provider
    assert_response :success
  end

  test "should update medical_provider" do
    patch :update, id: @medical_provider, medical_provider: { City: @medical_provider.City, Specialty: @medical_provider.Specialty, Zip: @medical_provider.Zip, street: @medical_provider.street, string: @medical_provider.string }
    assert_redirected_to medical_provider_path(assigns(:medical_provider))
  end

  test "should destroy medical_provider" do
    assert_difference('MedicalProvider.count', -1) do
      delete :destroy, id: @medical_provider
    end

    assert_redirected_to medical_providers_path
  end
end
