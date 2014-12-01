require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = Client.new(fname: "Chudi", lname:"Iregbulem", email: "chudi@example.com"
                       password: "foobar", password_confirmation: "foobar")
  end
end
