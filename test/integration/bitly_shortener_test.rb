require 'test_helper'
 
# put this test in test/integration/bitly_shortener_test.rb
# run tests with "bundle exec rake test"
class BitlyShortenerTest < ActionDispatch::IntegrationTest
  test 'it shortens URLs' do
    original = 'http://en.wikipedia.org/wiki/Sports_game'
    post '/', params: { url: original }
 
    assert_response 201
    shortened = response.headers['Location']
    assert shortened.length < original.length, 'URL is actually shorter'
 
    get '/', params: { shortened: shortened }
    assert_redirected_to original
  end
end