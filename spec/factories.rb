FactoryGirl.define do
  factory :create_tag do
    category "MyString"
    status "MyString"
    number_of_hits 1
    description "MyString"
  end
  factory :poem do
    sequence(:title) {|n| "Title #{n}"}
    teacher_name 'a' 
    county 'a' 
    email 'a@a.com' 
    student_name 'a'
    grade 'K'
    student_teacher_name 'a'
    attachment { File.open(File.join(Rails.root, '/spec/a.pdf')) }
    poem 'Two roads diverged'
    release { File.open(File.join(Rails.root, '/spec/b.pdf')) }
    school 'a'
  end
end