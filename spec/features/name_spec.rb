require 'rails_helper.rb'

feature 'Visiting root page' do
    scenario 'Welcome Posts' do
        visit root_path
        expect(page).to have_text('Welcome posts')
    end
end