require './test/test_helper'
require './lib/company'

class CompanyTest < Minitest::Test
  def setup
    @file1 = './data/employees.csv'
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

  # def test_it_returns_a_hash_when_loading_employees_from_file
  #   @company.load_attributes((employees: @file1), @employees, Employee)
  # end
end
