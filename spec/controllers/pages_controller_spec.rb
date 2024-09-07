# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController do
  describe 'GET #movie' do
    it 'returns a success response' do
      get :movie
      expect(response).to be_successful
    end

    it 'renders the movie template' do
      get :movie
      expect(response).to render_template(:movie)
    end
  end

  describe 'GET #review' do
    it 'returns a success response' do
      get :review
      expect(response).to be_successful
    end

    it 'renders the review template' do
      get :review
      expect(response).to render_template(:review)
    end
  end
end
