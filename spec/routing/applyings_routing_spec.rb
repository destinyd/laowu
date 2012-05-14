require "spec_helper"

describe ApplyingsController do
  describe "routing" do

    it "routes to #index" do
      get("/applyings").should route_to("applyings#index")
    end

    it "routes to #new" do
      get("/applyings/new").should route_to("applyings#new")
    end

    it "routes to #show" do
      get("/applyings/1").should route_to("applyings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/applyings/1/edit").should route_to("applyings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/applyings").should route_to("applyings#create")
    end

    it "routes to #update" do
      put("/applyings/1").should route_to("applyings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/applyings/1").should route_to("applyings#destroy", :id => "1")
    end

  end
end
