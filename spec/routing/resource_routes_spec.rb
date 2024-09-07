# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routes follow resource naming' do
  context 'when routing' do
    specify 'Pages movie' do
      expect(get: movie_path).to route_to 'pages#movie'
    end

    specify 'Pages review' do
      expect(get: review_path).to route_to 'pages#review'
    end
  end

  context 'when creating path helpers' do
    specify 'movie_path' do
      expect(movie_path).to eq '/movie'
    end

    specify 'review_path' do
      expect(review_path).to eq '/review'
    end
  end
end
