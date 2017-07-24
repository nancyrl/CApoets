require 'rails_helper'

RSpec.describe Poem, type: :model do
    before(:each) do
        @poem = Poem.create(teacher_name: "Nancy Li", county: "Alameda", email: "nli@berkeley.edu", student_name: "Jennifer Yip", school: "CAL", grade: "K", student_teacher_name: "Ms. Carol", title: "ABC", attachment: "{ File.open(File.join(Rails.root, '/spec/a.pdf')) }", poem: "efg", release: "{ File.open(File.join(Rails.root, '/spec/b.pdf')) }" )
    end
      
    describe "#new" do
        it "takes many parameters and returns a Poem object" do
            @poem.should be_an_instance_of Poem
        end
    end
    
    describe "Poem status" do
      it "is Pending by default" do 
        expect(@poem.pending?).to be true
        expect(@poem.rejected?).to be false
        expect(@poem.approved?).to be false
      end 
    context "title is not present" do
      it "adds an error on the 'title' attribute" do
        expect{Poem.create!(teacher_name: "Nancy Li", county: "Alameda", email: "nli@berkeley.edu", student_name: "Jennifer Yip", school: "CAL", grade: "K", student_teacher_name: "Ms. Carol", title: "ABC", attachment: "{ File.open(File.join(Rails.root, '/spec/a.pdf')) }", poem: "efg", release: "{ File.open(File.join(Rails.root, '/spec/b.pdf')) }")}.to raise_error
      end
    end
    
end

end

# RSpec.describe PoemsController, type: :controller do
#   describe "GET index" do
#     it "renders the gallery" do
#       get root_path
#       expect(response).to render_template("home")
#     end
#   end
  
#   describe "GET admin index" do
#     it "renders the admin's index page" do
#       get authenticated_root_path
#       expect(response).to render_template("index")
#     end
#   end 
  
# end

# RSpec.describe AdminController, type: :controller do
#   describe "GET admin welcome" do
#     it "renders the admin's welcome page" do
#       get admin_path
#       expect(response).to render_template("index")
#     end
#   end 
# end
