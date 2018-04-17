require 'csv'
# :nodoc:
module FileHelper
  def load_attributes(filepath, attribute, klass)
    CSV.foreach(filepath,
                headers: true,
                header_converters: :symbol) do |row|
      attribute << klass.new(row, self)
    end
  end
end
