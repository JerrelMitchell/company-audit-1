require './test/test_helper'
require './lib/company'

# :nodoc:
class CompanyTest < Minitest::Test
  def setup
    @company = Company.new
  end

  def test_it_exists
    assert_instance_of Company, @company
  end

  def test_it_has_attributes
    assert_equal [], @company.employees
    assert_equal [], @company.projects
    assert_equal [], @company.timesheets
  end
end
