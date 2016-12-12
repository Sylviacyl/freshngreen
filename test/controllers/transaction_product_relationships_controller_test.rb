require 'test_helper'

class TransactionProductRelationshipsControllerTest < ActionController::TestCase
  setup do
    @transaction_product_relationship = transaction_product_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transaction_product_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction_product_relationship" do
    assert_difference('TransactionProductRelationship.count') do
      post :create, transaction_product_relationship: { item_count: @transaction_product_relationship.item_count, product: @transaction_product_relationship.product, transaction: @transaction_product_relationship.transaction }
    end

    assert_redirected_to transaction_product_relationship_path(assigns(:transaction_product_relationship))
  end

  test "should show transaction_product_relationship" do
    get :show, id: @transaction_product_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction_product_relationship
    assert_response :success
  end

  test "should update transaction_product_relationship" do
    patch :update, id: @transaction_product_relationship, transaction_product_relationship: { item_count: @transaction_product_relationship.item_count, product: @transaction_product_relationship.product, transaction: @transaction_product_relationship.transaction }
    assert_redirected_to transaction_product_relationship_path(assigns(:transaction_product_relationship))
  end

  test "should destroy transaction_product_relationship" do
    assert_difference('TransactionProductRelationship.count', -1) do
      delete :destroy, id: @transaction_product_relationship
    end

    assert_redirected_to transaction_product_relationships_path
  end
end
