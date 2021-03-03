class LiferayFormPage
    include Capybara::DSL

    def access
        visit 'https://forms.liferay.com/web/forms/shared/-/form/122548'
    end
    
    def fill_all_fields(fields) 
        Helper.fill_field_form('What is the date of your birth?',fields['What is the date of your birth?'])
        Helper.fill_field_form('What is your name?',fields['What is your name?'])
        Helper.fill_field_form('Why did you join the testing area?',fields['Why did you join the testing area?'])
    end

    def form_description_success
        within('.ddm-form-success-page') do
            @desc = find('.ddm-form-description').text
        end
        return @desc
    end

    def submit
        click_button 'Submit'
    end

end