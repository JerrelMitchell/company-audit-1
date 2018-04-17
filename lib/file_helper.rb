require 'csv'
# :nodoc:
module FileHelper
  def load_attributes(filepath, attribute, klass)
    CSV.foreach(filepath,
                headers: false,
                header_converters: :all) do |row|
                  attribute << klass.new(row, self)
    end
  end
end
