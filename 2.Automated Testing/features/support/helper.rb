module Helper
    include Capybara::DSL
    extend self

    def fill_field_form(field_name,value)
        within('.form-group', text: field_name) do
            find('.form-control').set value
            sleep 0.5
        end
    end

    def field_empty_msg(field_name)
        within('.form-group', text: field_name) do
            find('.form-feedback-item').text
        end
    end

end
