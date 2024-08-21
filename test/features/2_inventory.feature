@inventory @saucedemo-test
Feature: Inventory

  Background:
    Given User login to Saucedemo

  @inventory-1
  Scenario: Check Sidebar
    When User click element "inventory/sidebarBtn"
    And User wait for 5000
    Then User finds the element "inventory/allItemBtn" displayed
    And User finds the element "inventory/aboutBtn" displayed
    And User finds the element "inventory/logoutBtn" displayed
    And User finds the element "inventory/resetBtn" displayed
    And User click element "inventory/closeBtn"

  @inventory-2
  Scenario: Verify All Element in Inventory page
    When User wait for 5000
    Then User finds the element "inventory/appLogo" displayed
    And User finds the element "inventory/cartIcon" displayed
    And User finds the element "inventory/titleProductPage" displayed
    And User finds the element "inventory/sortProduct" displayed
    And User finds the element "inventory/twitterIcon" displayed
    And User finds the element "inventory/linkedinIcon" displayed
    And User finds the element "inventory/footerCopy" displayed
    And User finds the element "inventory/inventoryItem1" displayed
    And User finds the element "inventory/inventoryItem1Image" displayed
    And User finds the element "inventory/inventoryItem1DescCard" displayed
    And User finds the element "inventory/inventoryItem1Desc" displayed
    And User finds the element "inventory/inventoryItem1Price" displayed
    And User finds the element "inventory/inventoryItem1Name" displayed
    And User finds the element "inventory/inventoryItem1BtnAddToCart" displayed

  @inventory-3
  Scenario: Add & Remove Product to Cart
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User finds the element "inventory/removeItem1" displayed
    And User click element "inventory/inventoryItem2BtnAddToCart"
    And User finds the element "inventory/removeItem2" displayed
    And User finds the element "inventory/itemCount2" displayed
    And User click element "inventory/removeItem2"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/removeItem1"
    And User finds the element "inventory/itemCount1" is not displayed

  @inventory-4
  Scenario: Product Detail
    When User click element "inventory/inventoryItem1Name"
    And User finds the element "inventory/btnBackToProduct" displayed
    And User finds the element "inventory/itemNameDetail" displayed
    And User finds the element "inventory/itemDescDetail" displayed
    And User finds the element "inventory/itemPriceDetail" displayed
    And User finds the element "inventory/itemImageDetail" displayed
    And User click element "inventory/btnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/btnRemove"
    And User finds the element "inventory/itemCount1" is not displayed
    And User click element "inventory/btnBackToProduct"
    And User finds the element "inventory/btnBackToProduct" is not displayed

  @inventory-5
  Scenario: Sort Product By Name
    And User compare value in element "inventory/inventoryItem1Name" match with text "Sauce Labs Backpack"
    When User click element "inventory/optionZA"
    And User wait for 3000
    And User compare value in element "inventory/inventoryItem1Name" match with text "Test.allTheThings() T-Shirt (Red)"
    And User click element "inventory/optionAZ"
    And User wait for 3000
    Then User compare value in element "inventory/inventoryItem1Name" match with text "Sauce Labs Backpack"

  @inventory-6
  Scenario: Sort Product By Price
    And User compare value in element "inventory/inventoryItem1Name" match with text "Sauce Labs Backpack"
    When User click element "inventory/optionLowHigh"
    And User wait for 3000
    And User compare value in element "inventory/inventoryItem1Name" match with text "Sauce Labs Onesie"
    And User click element "inventory/optionHighLow"
    And User wait for 3000
    Then User compare value in element "inventory/inventoryItem1Name" match with text "Sauce Labs Fleece Jacket"