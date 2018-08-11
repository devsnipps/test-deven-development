require 'rails_helper.rb'

feature 'Create and update' do
    scenario 'can create job' do
        #visit route
        visit '/'
        #click create button
        click_link 'Create update'
        #fill the form with need information
        fill_in 'Title', with: 'title'
        fill_in 'Caption', with: 'caption'
        #click submit button
        click_button 'Create Update'
        #expected page submit content to be
        expect(page).to have_content('title')
        expect(page).to have_content('caption')
    end
end

feature 'Checking all pages' do
    scenario 'Show all the pages' do
        visit '/about'
        visit '/contact'
    end
end




