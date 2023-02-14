require "rails_helper"

RSpec.describe SalesOfficesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sales_offices").to route_to("sales_offices#index")
    end

    it "routes to #new" do
      expect(get: "/sales_offices/new").to route_to("sales_offices#new")
    end

    it "routes to #show" do
      expect(get: "/sales_offices/1").to route_to("sales_offices#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sales_offices/1/edit").to route_to("sales_offices#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sales_offices").to route_to("sales_offices#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sales_offices/1").to route_to("sales_offices#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sales_offices/1").to route_to("sales_offices#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sales_offices/1").to route_to("sales_offices#destroy", id: "1")
    end
  end
end
