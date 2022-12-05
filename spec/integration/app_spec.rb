require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
    include Rack::Test::Methods

    app = Application.new

    context "GET /" do
        it "returns a 200 status code" do
            get "/"
            expect(last_response.status).to eq(200)
        end
    end
end
