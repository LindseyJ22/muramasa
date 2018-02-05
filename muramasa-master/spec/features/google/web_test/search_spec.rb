require 'spec_helper'
app = AutomationFramework::Application.new
test_name = 'Search Google'

feature test_name.to_s, sauce: app.sauce do
  scenario test_name.to_s, type: 'acceptance', broken: false,
           dev: true, qa: true, prod: true do

    app.launch_app(app.url('GOOGLE'))
    app.google_landing_page.enter_search_text('Muramasa')
    app.google_landing_page.click_search
    app.google_landing_page.click_wiki
    document = open('https://en.wikipedia.org/wiki/Muramasa')
    content = document.read
    parsed_content = Nokogiri::HTML(content)
    century_born = parsed_content.css('p').css('a')[1].text
    puts "Muramasa was born during the #{century_born}"
    app.close_all_windows
  end
end