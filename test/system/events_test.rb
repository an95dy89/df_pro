require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Chechk in", with: @event.chechk_in
    fill_in "Date", with: @event.date
    fill_in "Net price", with: @event.net_price
    fill_in "Number invoice", with: @event.number_invoice
    fill_in "Purcharse of order", with: @event.purcharse_of_order
    fill_in "Quantity of code", with: @event.quantity_of_code
    fill_in "Rut", with: @event.rut
    fill_in "Supplier name", with: @event.supplier_name
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Chechk in", with: @event.chechk_in
    fill_in "Date", with: @event.date
    fill_in "Net price", with: @event.net_price
    fill_in "Number invoice", with: @event.number_invoice
    fill_in "Purcharse of order", with: @event.purcharse_of_order
    fill_in "Quantity of code", with: @event.quantity_of_code
    fill_in "Rut", with: @event.rut
    fill_in "Supplier name", with: @event.supplier_name
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
