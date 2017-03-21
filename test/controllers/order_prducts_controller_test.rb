require 'test_helper'

class OrderPrductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_prduct = order_prducts(:one)
  end

  test "should get index" do
    get order_prducts_url
    assert_response :success
  end

  test "should get new" do
    get new_order_prduct_url
    assert_response :success
  end

  test "should create order_prduct" do
    assert_difference('OrderPrduct.count') do
      post order_prducts_url, params: { order_prduct: { notes: @order_prduct.notes, order_id: @order_prduct.order_id, product_id: @order_prduct.product_id, quantity: @order_prduct.quantity } }
    end

    assert_redirected_to order_prduct_url(OrderPrduct.last)
  end

  test "should show order_prduct" do
    get order_prduct_url(@order_prduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_prduct_url(@order_prduct)
    assert_response :success
  end

  test "should update order_prduct" do
    patch order_prduct_url(@order_prduct), params: { order_prduct: { notes: @order_prduct.notes, order_id: @order_prduct.order_id, product_id: @order_prduct.product_id, quantity: @order_prduct.quantity } }
    assert_redirected_to order_prduct_url(@order_prduct)
  end

  test "should destroy order_prduct" do
    assert_difference('OrderPrduct.count', -1) do
      delete order_prduct_url(@order_prduct)
    end

    assert_redirected_to order_prducts_url
  end
end
