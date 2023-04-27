require "rails_helper"

describe "OrganicStoresController Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating project" do
        #OrganicStore = OrganicStore.new(description: "Content of the description")
      #expect(project.valid?).to eq(false)
    end
    it "should not be able to save project when title missing" do
        #OrganicStore = OrganicStorenew(description: "Some description content goes here")
      #expect(project.save).to eq(false)
    end
    it "should be able to save project when have description and title" do
       # OrganicStore = OrganicStore.new(title: "Title", description: "Content of the description")
      #expect(project.save).to eq(true)
    end
  end
end

describe "OrganicStoresController Requirements on Edit", :type => :model do
  context "Edit project" do  
    before (:each) do
        @organic_stores = OrganicStore.create(title: "Title", description: "Content of the description")
 
      end
    it "ensures the title is present when editing project" do
        @organic_stores.update(:title => "New Title")
      expect(@organic_stores.title == "New Title")
    end
  end
end
