require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test
  def setup
    id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @project = Project.new(id, name, start_date, end_date)
  end

  def test_it_exists
    assert_instance_of Project, @project
  end

  def test_it_has_attributes
    assert_equal 123, @project.id
    assert_equal 'Widget Maker', @project.name
    assert_equal '2015-01-01', @project.start_date
    assert_equal '2018-01-01', @project.end_date
  end
end
