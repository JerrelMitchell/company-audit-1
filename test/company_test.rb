require './test/test_helper'
require './lib/company'

# :nodoc:
class CompanyTest < Minitest::Test
  def setup
    @employee_file = './data/employees.csv'
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

  def test_it_loads_data
    result = @company.load_employees(@employee_file)
    assert_equal Hash, result
  end
end
