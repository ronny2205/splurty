require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do 
    quote = Quote.create(:author => 'Herold Pinter', :saying => 'Shall I put it around my neck?')
	expected = 'HP#' + quote.id.to_s 
	actual = quote.unique_tag
	assert_equal expected, actual   
  end

end
