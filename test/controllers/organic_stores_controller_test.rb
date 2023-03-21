require "test_helper"

class OrganicStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organic_store = organic_stores(:one)
  end

  test "should get index" do
    get organic_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_organic_store_url
    assert_response :success
  end

  test "should create organic_store" do
    assert_difference('OrganicStore.count') do
      post organic_stores_url, params: { organic_store: { DDATE: @organic_store.DDATE, ITEM: @organic_store.ITEM, ITEMNO: @organic_store.ITEMNO, PRICE: @organic_store.PRICE, QTY: @organic_store.QTY } }
    end

    assert_redirected_to organic_store_url(OrganicStore.last)
  end

  test "should show organic_store" do
    get organic_store_url(@organic_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_organic_store_url(@organic_store)
    assert_response :success
  end

  test "should update organic_store" do
    patch organic_store_url(@organic_store), params: { organic_store: { DDATE: @organic_store.DDATE, ITEM: @organic_store.ITEM, ITEMNO: @organic_store.ITEMNO, PRICE: @organic_store.PRICE, QTY: @organic_store.QTY } }
    assert_redirected_to organic_store_url(@organic_store)
  end

  test "should destroy organic_store" do
    assert_difference('OrganicStore.count', -1) do
      delete organic_store_url(@organic_store)
    end

    assert_redirected_to organic_stores_url
  end
end
