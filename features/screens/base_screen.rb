include RSpec::Matchers

class BaseScreen

    #initialize screen variables
    def initialize
        $side1 = "txtLado1"
        $side2 = "txtLado2"
        $side3 = "txtLado3"
        $calculete = "btnCalcular"
        @result = 'txtResultado'
    end

    #wait for an element be visible
    def wait_for_id(id, timeout = 10)
        @driver.wait_true(timeout) do
            @driver.exists { @driver.find_element(:id, id)}
        end
    end

    #click in an element by ID
    def click_id(id)
        if @driver.is_keyboard_shown then
            @driver.hide_keyboard
        end
        @driver.find_element(:id, id).click
    end

    #Find an element by ID and fill with a text
    def send_keys_id(id, text)
        @driver.find_element(:id, id).send_keys(text)
    end

    #Find an text
    def text_validator(text)
        expect(id(@result).text).to eq(text)
    end

end