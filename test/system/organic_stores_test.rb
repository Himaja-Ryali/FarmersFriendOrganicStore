require "application_system_test_case"

class OrganicStoresTest < ApplicationSystemTestCase
  setup do
    @organic_store = organic_stores(:one)
  end

  test "visiting the index" do
    visit organic_stores_url
    assert_selector "h1", text: "Organic Stores"
  end

  test "creating a Organic store" do
    visit organic_stores_url
    click_on "New Organic Store"

    fill_in "Ddate", with: @organic_store.DDATE
    fill_in "Item", with: @organic_store.ITEM
    fill_in "Itemno", with: @organic_store.ITEMNO
    fill_in "Price", with: @organic_store.PRICE
    fill_in "Qty", with: @organic_store.QTY
    click_on "Create Organic store"

    assert_text "Organic store was successfully created"
    click_on "Back"
  end

  test "updating a Organic store" do
    visit organic_stores_url
    click_on "Edit", match: :first

    fill_in "Ddate", with: @organic_store.DDATE
    fill_in "Item", with: @organic_store.ITEM
    fill_in "Itemno", with: @organic_store.ITEMNO
    fill_in "Price", with: @organic_store.PRICE
    fill_in "Qty", with: @organic_store.QTY
    click_on "Update Organic store"

    assert_text "Organic store was successfully updated"
    click_on "Back"
  end

  test "destroying a Organic store" do
    visit organic_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organic store was successfully destroyed"
  end
end
