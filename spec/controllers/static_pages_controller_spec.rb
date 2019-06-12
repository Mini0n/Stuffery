require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  describe 'controller routes' do
    context 'GET home' do
      it 'returns 200' do
        get :home
        expect(response.status).to eq(200)
        expect(response.body).to include 'Stuffery'
      end
    end

    context 'GET help' do
      it 'returns 200' do
        get :help
        expect(response.status).to eq(200)
      end
    end

    context 'GET about' do
      it 'returns 200' do
        get :about
        expect(response.status).to eq(200)
      end
    end
  end
end
