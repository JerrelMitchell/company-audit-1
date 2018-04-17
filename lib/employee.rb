class Employee
  attr_reader :attributes, :parent

  def initialize(employee, parent)
    @attributes = {
      id:         employee[:id].to_i,
      name:       employee[:name],
      role:       employee[:role],
      start_date: employee[:start_date],
      end_date:   employee[:end_date]
    }
    @parent = parent
  end

  def id
    attributes[:id]
  end

  def name
    attributes[:name]
  end

  def role
    attributes[:role]
  end

  def start_date
    attributes[:start_date]
  end

  def end_date
    attributes[:end_date]
  end
end
