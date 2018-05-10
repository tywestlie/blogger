require 'rails_helper'

describe 'user sees one article' do
  describe 'they link from the articles index' do
    it 'displays information for one article' do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")
      visit '/articles'
      expect(page).to 
    end
  end
end
