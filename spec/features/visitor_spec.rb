# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Visitor Features' do
  feature 'Explore Movie Information' do
    scenario 'Viewing the movie description page content' do
      visit movie_path

      expect(page).to have_css('h1')
      expect(page).to have_css('h2')
      expect(page).to have_css('p')
      expect(page).to have_css('ul', count: 1)
      expect(page).to have_css('ul li', count: 3)
      expect(page).to have_link('Review')
    end

    scenario 'Redirecting from the root page to the movie page' do
      visit root_path

      expect(page).to have_current_path(movie_path, ignore_query: true)
    end
  end

  feature 'Read Movie Review' do
    scenario "Viewing the movie review page content" do
      visit review_path

      expect(page).to have_css('h1')
      expect(page).to have_css('p')
      expect(page).to have_link('Back to Movie')
    end

    scenario 'Navigating to the review page from the movie page' do
      visit movie_path
      click_on 'Review'

      expect(page).to have_current_path(review_path, ignore_query: true)
    end

    scenario 'Navigating back to the movie page from the review page' do
      visit review_path
      click_on 'Back to Movie'

      expect(page).to have_current_path(movie_path, ignore_query: true)
    end
  end
end
