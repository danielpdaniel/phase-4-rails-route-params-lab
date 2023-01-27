

class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.filter_by_name(search_term)

    searched_students_array = []
    self.all.each do |student|

      if student.to_s.upcase === search_term.upcase
        searched_students_array.push(student)
      elsif student.first_name.upcase === search_term.upcase
        searched_students_array.push(student)
      elsif student.last_name.upcase === search_term.upcase
        searched_students_array.push(student)
      end
    end
    searched_students_array
  end

end
