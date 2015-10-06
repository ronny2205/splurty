require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
    quote = Quote.create(:author => 'Herold Pinter', :saying => 'Shall I put it around my neck?')
  	get :show, :id => quote.id
  	assert_response :success
  end

  test "quote show page, not found" do
    get :show, :id => 'MAZE'
    assert_response :not_found
  end
end
