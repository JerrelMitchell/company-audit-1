require './test/test_helper'
require './lib/company'

# :nodoc:
class CompanyTest < Minitest::Test
  attr_reader :company
  def setup
    @company = Company.from_csv(
      items:     './fixtures/fixture_items.csv'
      # merchants: './fixtures/fixture_merchants.csv',
      # invoices:  './fixtures/fixture_invoices.csv'
    )
  end

  def test_has_instances_of_item_and_merchant_repositories
    assert_instance_of EmployeeList, company.employees
    # assert_instance_of ProjectsList, company.projects
    # assert_instance_of TimesheetList, company.timesheets
  end

  def test_it_has_attributes
    assert_equal 'Susan Smith', company.employees.all.first.name
    # assert_equal 'Widgets', company.projects.all.first.name
    # assert_equal 480, company.timesheets.all.first.minutes
  end
end
