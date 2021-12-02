require 'rails_helper'

RSpec.describe "Articles", type: :feature do
  describe "on visit" do
    before {visit articles_path}

    it 'shows all articles in the body' do
      expect(page).to have_content("Hello World")
      expect(page).to have_content("New Article")
    end

    it 'successfully creates a new article' do
      click_link('New Article')
      fill_in "article_author", with: "x-author"
      fill_in "article_content", with: "xzxcz"
      fill_in "article_title", with: "ASDASx"
      click_button('Create Article')

      expect(page).to have_content("xzxcz")
      expect(page).to have_content("ASDASx")
      expect(page).to have_current_path(articles_path)
    end
  end
end