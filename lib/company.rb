require './lib/file_helper'
class Company
  include FileHelper
  attr_reader :employees, :projects, :timesheets
  def initialize
    @employees  = []
    @projects   = []
    @timesheets = []
  end

  def load_employees(filename)
    load_attributes(filename, @employees, Employee)
  end

  def load_projects(filename)
    load_attributes(filename, @projects, Project)
  end

  def load_timesheets(filename)
    load_attributes(filename, @timesheets, Timesheet)
  end

end
