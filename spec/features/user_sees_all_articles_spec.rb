require 'rails_helper'

describe 'user sees all articles' do
  describe 'they visit /articles' do
    it 'displays all articles' do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")

      visit articles_path

      click_link article.title

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
    end

    it 'can click on a new article link' do
      visit '/articles'

      expect(page). to have_link('Create a New Article')
    end
  end
end
