require 'csv'
require './lib/employee'

class Company
  attr_reader :employees, :projects, :timesheets
  def initialize
    @employees  = []
    @projects   = []
    @timesheets = []
  end
end

def load_attributes(filepath, attribute, klass)
  CSV.foreach(filepath,
              headers: true,
              header_converters: :symbol) do |row|
    attribute << klass.new(row, self)
  end
end


# Parameters: String
# Returns: Hash
# Read all data from filename in CSV format. Only add its contents to company.employees if ALL data in the file is valid. If any data is invalid, you should immediately return an error INSTEAD of saving the data. A test file for bad employee data has been provided.
#
# This method should return a hash. A success key in the hash will contain a boolean letting us know if the whole file imported correctly or not. An error key, if success is false, will tell us why the import failed.
#
# Return value examples:
#
# {success: true, error: nil}
# {success: false, error: 'bad data'}
