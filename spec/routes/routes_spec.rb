require "rails_helper"

RSpec.describe "routes for Videos", type: :routing do

  it "routes/videos to the video controller" do
    expect(get("/videos")).to route_to("videos#index") 
  end

  it "routes /videos/id to the video controller" do
    expect(get("/videos/5")).to route_to(
      controller: 'videos',
      action: 'show',
      id: '5'
    )
  end
end