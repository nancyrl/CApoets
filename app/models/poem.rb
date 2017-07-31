class Poem < ActiveRecord::Base
    has_many :tags
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    mount_uploader :release, ReleaseUploader
    validates :attachment, :teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :list_of_tags, :release, presence: true # Make sure the owner's name is present.
    
    def pending?
        return true if self.status == 'Pending'
        return false
    end
    
    def rejected?
        return true if self.status == 'Rejected'
        return false
    end
    
    def approved?
        return true if self.status == 'Approved'
        return false
    end
end