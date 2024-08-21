@cart @saucedemo-test
Feature: Cart

  Background:
    Given User login to Saucedemo

  @cart-1
  Scenario: Process Product to Checkout until Finish
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/cartIcon"
    And User finds the element "cart/titleYourCart" displayed
    And User finds the element "cart/qtyLabel" displayed
    And User finds the element "cart/descLabel" displayed
    And User finds the element "cart/itemPrice" displayed
    And User finds the element "cart/itemDesc" displayed
    And User finds the element "cart/itemName" displayed
    And User finds the element "cart/btnContinueShopping" displayed
    And User finds the element "inventory/removeItem1" displayed
    When User click element "cart/btnCheckout"
    And User finds the element "cart/titleCheckoutInfo" displayed
    And User finds the element "cart/inputFirstName" displayed
    And User finds the element "cart/inputLasttName" displayed
    And User finds the element "cart/inputPostCode" displayed
    And User finds the element "cart/btnCancel" displayed
    And User finds the element "cart/btnContinue" displayed
    And User fills element "cart/inputFirstName" with value "Test"
    And User fills element "cart/inputLasttName" with value "Automation"
    And User fills element "cart/inputPostCode" with value "888888"
    When User click element "cart/btnContinue"
    And User finds the element "cart/titleCheckoutOverview" displayed
    And User finds the element "cart/itemPrice" displayed
    And User finds the element "cart/itemDesc" displayed
    And User finds the element "cart/itemName" displayed
    And User finds the element "cart/labelPayment" displayed
    And User finds the element "cart/valuePayment" displayed
    And User finds the element "cart/labelShipping" displayed
    And User finds the element "cart/valueShipping" displayed
    And User finds the element "cart/valueSubtotal" displayed
    And User finds the element "cart/valueTax" displayed
    And User finds the element "cart/valueTotal" displayed
    When User click element "cart/btnFinish"
    And User finds the element "cart/titleCheckoutComplete" displayed
    And User finds the element "cart/iconSuccess" displayed
    And User finds the element "cart/textComplete" displayed
    And User finds the element "cart/subtitleComplete" displayed
    And User finds the element "cart/btnBackHome" displayed
    When User click element "cart/btnBackHome"
    Then User finds the element "inventory/titleProductPage" displayed

  @cart-2
  Scenario: User Remove Product from Cart
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/cartIcon"
    And User finds the element "cart/titleYourCart" displayed
    And User finds the element "cart/qtyLabel" displayed
    And User finds the element "cart/descLabel" displayed
    And User finds the element "cart/itemPrice" displayed
    And User finds the element "cart/itemDesc" displayed
    And User finds the element "cart/itemName" displayed
    And User finds the element "inventory/removeItem1" displayed
    Then User click element "inventory/removeItem1"
    And User finds the element "cart/itemName" is not displayed
    And User finds the element "cart/itemPrice" is not displayed
    And User finds the element "cart/itemDesc" is not displayed

  @cart-3
  Scenario: User back to home from cart
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/cartIcon"
    And User finds the element "cart/titleYourCart" displayed
    And User click element "cart/btnContinueShopping"
    Then User finds the element "inventory/titleProductPage" displayed

  @cart-4
  Scenario: User back to cart from checkout information
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/cartIcon"
    And User finds the element "cart/titleYourCart" displayed
    And User click element "cart/btnCheckout"
    And User finds the element "cart/titleCheckoutInfo" displayed
    And User click element "cart/btnCancel"
    Then User finds the element "cart/titleYourCart" displayed

  @cart-5
  Scenario: User got error message at Checkout Information
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/cartIcon"
    And User finds the element "cart/titleYourCart" displayed
    And User click element "cart/btnCheckout"
    And User finds the element "cart/titleCheckoutInfo" displayed
    And User click element "cart/btnContinue"
    Then User finds the element "cart/errorCheckout" displayed

  @cart-6
  Scenario: User back to checkout information from checkout overview
    When User click element "inventory/inventoryItem1BtnAddToCart"
    And User finds the element "inventory/itemCount1" displayed
    And User click element "inventory/cartIcon"
    And User finds the element "cart/titleYourCart" displayed
    And User click element "cart/btnCheckout"
    And User fills element "cart/inputFirstName" with value "Test"
    And User fills element "cart/inputLasttName" with value "Automation"
    And User fills element "cart/inputPostCode" with value "888888"
    And User click element "cart/btnContinue"
    And User finds the element "cart/titleCheckoutOverview" displayed
    And User click element "cart/btnCancel"
    Then User finds the element "inventory/titleProductPage" displayed
