class Employee
  attr_reader :id, :name, :role, :start_date, :end_date
  def initialize(id = 0, name = '', role = '', start_date = '', end_date = '')
    @id = id
    @name = name
    @role = role
    @start_date = start_date
    @end_date = end_date
  end

  def self.validate(data)
    return false if data.length != 5
    return false if data[0].to_i.to_s != data[0]
    begin
      DateHandler.string_to_date data[3]
      DateHandler.string_to_date data[4]
    rescue ArgumentError
      return false
    end
    true
  end
end
