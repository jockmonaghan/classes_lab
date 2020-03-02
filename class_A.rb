class Student

attr_accessor :student_name, :cohort_name


def initialize(input_student_name, input_cohort_name)
  @student_name = input_student_name
  @cohort_name = input_cohort_name
end

def student_name
  return @student_name
end

def cohort_name
  return @cohort_name
end

def set_student_name(new_name)
  @student_name = new_name
end

def set_cohort_name(new_cohort)
  @cohort_name = new_cohort
end

def student_talk(person, speech)
  if @student_name = person
    return speech
  end
end

def favourite_language(person, language)
  if @student_name = person
    return "I love " + language
  end
end




end
