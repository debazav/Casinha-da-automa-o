
Given(/^I'm in website "([^"]*)"$/) do |arg1|
  visit(arg1)
end

When(/^I give a GET command$/) do
  @caminho ="posts"
    #puts HTTParty.get("https://jsonplaceholder.typicode.com/#{caminho}")
  @resultado = HTTParty.get("https://jsonplaceholder.typicode.com/#{@caminho}")
end

Then(/^I should receive status code = "([^"]*)"$/) do |arg1|
    #puts @resultado.code
    expect(@resultado.code).to eq arg1.to_i
end
When(/^I give a GET command with id ="([^"]*)"$/) do |arg1|
  @caminho ="posts"
  @resultado = HTTParty.get("https://jsonplaceholder.typicode.com/#{@caminho}/#{arg1.to_i}")
end

Then(/^I should receive the title = "([^"]*)"$/) do |arg1|
resultado_string = @resultado .parsed_response
puts resultado_string
 expect(resultado_string["title"]).to eq arg1
end