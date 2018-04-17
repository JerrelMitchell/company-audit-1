require './test/test_helper'
require './lib/company'

# :nodoc:
class EmployeeListTest < Minitest::Test
  attr_reader :employee_list
  def setup
    company = Company.from_csv(
      employees: './data/employees.csv',
      # projects: './data/projects.csv',
      # timesheets:  './data/timesheets.csv'
    )
    @employee_list = company.employees
  end

  def test_it_exists
    assert_instance_of EmployeeList, employee_list
  end

  def test_it_has_all_employees_in_array_and_all_employees_are_employees
    assert_instance_of Array, employee_list.all
    binding.pry
    assert_equal 2, employee_list.all.count
    assert(employee_list.all.all? { |employee| employee.is_a?(Employee) })
  end
end
