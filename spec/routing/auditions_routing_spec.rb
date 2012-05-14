require "spec_helper"

describe AuditionsController do
  describe "routing" do

    it "routes to #index" do
      get("/auditions").should route_to("auditions#index")
    end

    it "routes to #new" do
      get("/auditions/new").should route_to("auditions#new")
    end

    it "routes to #show" do
      get("/auditions/1").should route_to("auditions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/auditions/1/edit").should route_to("auditions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/auditions").should route_to("auditions#create")
    end

    it "routes to #update" do
      put("/auditions/1").should route_to("auditions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/auditions/1").should route_to("auditions#destroy", :id => "1")
    end

  end
end
