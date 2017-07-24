# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
    poem = Poem.new({
        teacher_name: "Teacher_Name ##{i}",
        county: "County ##{i}",
        email: "Email ##{i}",
        student_name: "Student_Name ##{i}",
        grade: "Grade ##{i}",
        student_teacher_name: "Student_Teacher_Name ##{i}",
        title: "Title ##{i}",
        attachment: "Attachment ##{i}",
        poem: "Poem ##{i}",
        release: "Release ##{i}",
        school: "School ##{i}",
        approval: "pending",
        status: "Pending"
        # fix? pending is case sensitive
        })
    poem.save!(validate: false)
end


5.times do |i|
    tag = Tag.new({
        # add approval column to tag table
        category: "Category ##{i}",
        status: "Pending",
        number_of_hits: "Number_of_hits ##{i}",
        description: "Description ##{i}",
        created_at: "Created_at ##{i}",
        updated_at: "Updated_at ##{i}"
        })
    tag.save!(validate: false)
end