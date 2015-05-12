require 'test_helper'

class AanbiedersControllerTest < ActionController::TestCase
  setup do
    @aanbieder = aanbieders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aanbieders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aanbieder" do
    assert_difference('Aanbieder.count') do
      post :create, aanbieder: { automerk: @aanbieder.automerk, naam: @aanbieder.naam, prijs: @aanbieder.prijs, stroom: @aanbieder.stroom }
    end

    assert_redirected_to aanbieder_path(assigns(:aanbieder))
  end

  test "should show aanbieder" do
    get :show, id: @aanbieder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aanbieder
    assert_response :success
  end

  test "should update aanbieder" do
    patch :update, id: @aanbieder, aanbieder: { automerk: @aanbieder.automerk, naam: @aanbieder.naam, prijs: @aanbieder.prijs, stroom: @aanbieder.stroom }
    assert_redirected_to aanbieder_path(assigns(:aanbieder))
  end

  test "should destroy aanbieder" do
    assert_difference('Aanbieder.count', -1) do
      delete :destroy, id: @aanbieder
    end

    assert_redirected_to aanbieders_path
  end
end
