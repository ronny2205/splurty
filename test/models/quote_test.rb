require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do 
    quote = FactoryGirl.create(:quote, :author => 'Herold Pinter')
	expected = 'No. ' + quote.id.to_s + ' / HP' 
	actual = quote.unique_tag
	assert_equal expected, actual   
  end

end
