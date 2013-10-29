require "spec_helper"

describe ComputesController do
  describe "routing" do

    it "routes to #index" do
      get("/computes").should route_to("computes#index")
    end

    it "routes to #new" do
      get("/computes/new").should route_to("computes#new")
    end

    it "routes to #show" do
      get("/computes/1").should route_to("computes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/computes/1/edit").should route_to("computes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/computes").should route_to("computes#create")
    end

    it "routes to #update" do
      put("/computes/1").should route_to("computes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/computes/1").should route_to("computes#destroy", :id => "1")
    end

  end
end
