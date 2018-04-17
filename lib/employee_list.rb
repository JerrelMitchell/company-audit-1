require_relative 'file_helper'
require_relative 'employee'

# robocomment
class EmployeeList
  include FileHelper
  attr_reader :employees, :parent
  def initialize(filepath, parent)
    @employees = []
    @parent    = parent
    load_attributes(filepath, @employees, Employee)
  end

  def all
    @employees
  end

  def find_by_id(id)
    find_with_id(@employees, id)
  end

  def find_by_name(name)
    find_by_instance_string(@employees, name, :name)
  end

  def delete(id)
    delete_instance(@employees, id)
  end

  def find_all_by_name(name)
    find_all_with_instance_string(@employees, name, :name)
  end

  def collect_id_for_timesheet(id)
    parent.collect_items_by_merchant_id(id)
  end
end
