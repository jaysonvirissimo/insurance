require "rails_helper"

RSpec.describe SalesPeopleController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sales_people").to route_to("sales_people#index")
    end

    it "routes to #new" do
      expect(get: "/sales_people/new").to route_to("sales_people#new")
    end

    it "routes to #show" do
      expect(get: "/sales_people/1").to route_to("sales_people#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sales_people/1/edit").to route_to("sales_people#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sales_people").to route_to("sales_people#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sales_people/1").to route_to("sales_people#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sales_people/1").to route_to("sales_people#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sales_people/1").to route_to("sales_people#destroy", id: "1")
    end
  end
end
