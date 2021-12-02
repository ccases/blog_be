require 'rails_helper'

RSpec.describe "Articles", type: :feature do
  describe "on visit" do
    before {visit articles_path}

    it 'shows all articles in the body' do
      within 'body' do
        expect(page).to have_content("Hello World")
        expect(page).to have_content("New Article")
      end
    end

    it 'successfully creates a new article' do
    end
  end
end