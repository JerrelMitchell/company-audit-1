class Timesheet
  attr_reader :employee_id, :project_id, :date, :minutes
  def initialize(employee_id, project_id, date, minutes)
    @employee_id = employee_id.to_i
    @project_id = project_id.to_i
    @date = date
    @minutes = minutes.to_i
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
