require 'sinatra_helper'
require_relative '../app.rb'

describe 'app' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'get /' do
    subject { get '/' }
    it { is_expected.to be_ok }

    describe 'body' do
      subject { super().body }
      it { is_expected.to match(/Sample App/) }
    end
  end

  describe 'get /about' do
    subject { get '/about' }
    it { is_expected.to be_ok }

    describe 'body' do
      subject { super().body }
      it { is_expected.to match(/Sample App | About/) }
    end
  end
end
