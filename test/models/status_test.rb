require 'test_helper'

class StatusTest < ActiveSupport::TestCase
 test "that a status required content" do 
 	status = Status.new
 	assert !status.save
 	assert !status.errors[:content].empty?
 	
 end

 test "thats a status's content is at least 2 letters" do
 	status = Status.new
 	status.content = "H"
 	assert !status.save
 	assert !status.errors[:content].empty?
 end

 test "that a status has a user id" do
 	status = Status.new
 	status.content = 'Hello'
 	
 	assert !status.save
 	assert !status.errors[:user_id].empty?
 end
end
