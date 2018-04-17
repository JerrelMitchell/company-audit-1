require 'csv'
# :nodoc:
module FileHelper
  def load_attributes(filepath, attributes, klass)
    CSV.foreach(filepath) do |info|
      return { success: false, error: 'bad data' } unless klass.validate(info)
      add_klass(info, attributes)
    end
    { success: true, error: nil }
  end

  def add_klass(info, attributes)
    all_attributes = Employee.new(info[0], info[1], info[2], info[3], info[4])
    attributes.push(all_attributes)
  end
end
