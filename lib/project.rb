class Project
  attr_reader :id, :name, :start_date, :end_date
  def initialize(id, name, start_date, end_date)
    @id = id.to_i
    @name = name
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
