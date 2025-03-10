require "rails_helper"

RSpec.describe VideosController, type: :controller do

  describe "Create" do

    it "shold create a video whit a new file" do


      post :create, params: {
        video: { video: fixture_file_upload('videoteste.mp4', 'video/mp4'), title: "teste", description: "afsdfasdfads"}
      } 



      expect(Video.count).to eq(1)
      expect(Video.last.video.attached?).to be_truthy

    end

  end

end