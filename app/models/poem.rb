class Poem < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    mount_uploader :release, ReleaseUploader
    validates :teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :release, presence: true # Make sure the owner's name is present.
end