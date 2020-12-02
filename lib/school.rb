class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start, hours)
    @start_time = start
    @hours_in_school_day = hours
    @student_names = []
    @end_time = (@start_time.to_i + @hours_in_school_day)
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    "#{@end_time}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map! do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    if @end_time > 12
      clock_time = @end_time - 12
      "#{clock_time}:00"
    else
      end_time
    end
  end
end
