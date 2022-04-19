require 'spec_helper'

describe "routing to users" do
  it "routes /users/1 to users#show" do
    expect(get: "/users/1").to route_to(
      controller: "users",
      action: "show", id: "1"
    )
  end
end