require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "jobs should have a description" do
    job = Job.new
    assert ! job.save, "must have description"
  end
  
  test "jobs save with a description" do
    job = Job.new
    job.description = "whatever"
    assert job.save
  end
  
  test "one must be after the other" do
    job = Job.new
    job.published_on = "5/31/2013"
    job.due_date = "5/10/2013"
    assert_throw job.duration 
    
    assert ! job.save
  end
end
