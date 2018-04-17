class Employee
  attr_reader :id, :name, :role, :start_date, :end_date
  def initialize(id = 0, name = '', role = '', start_date = '', end_date = '')
    @id = id
    @name = name
    @role = role
    @start_date = start_date
    @end_date = end_date
  end
end
