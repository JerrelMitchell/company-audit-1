require 'csv'
require './lib/employee_list'

class Company
  attr_reader :employees, :projects, :timesheets
  def initialize(files)
    @employees  = EmployeeList.new(files[:employees], self)
    # @projects   = ProjectList.new(files[:projects], self)
    # @timesheets = TimesheetList.new(files[:timesheets], self)
  end

  def self.from_csv(files)
    new(files)
  end

  def collect_employees_by_id(id)
    employees.find_all_by_id(id)
  end

  def collect_projects_by_id(id)
    projects.find_all_by_id(id)
  end
end
