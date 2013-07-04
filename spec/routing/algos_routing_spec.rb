require "spec_helper"

describe AlgosController do
  describe "routing" do

    it "routes to #index" do
      get("/algos").should route_to("algos#index")
    end

    it "routes to #new" do
      get("/algos/new").should route_to("algos#new")
    end

    it "routes to #show" do
      get("/algos/1").should route_to("algos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/algos/1/edit").should route_to("algos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/algos").should route_to("algos#create")
    end

    it "routes to #update" do
      put("/algos/1").should route_to("algos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/algos/1").should route_to("algos#destroy", :id => "1")
    end

  end
end
