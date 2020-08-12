class CurrenciesController < ApplicationController
  def first_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch('symbols')
    @symbols_keys = @symbols_hash.keys
    render({ :template => 'currency_templates/step_one.html.erb'})
    
    
  end

  def second_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch('symbols')
    @symbols_keys = @symbols_hash.keys
    @selected_symbol = params.fetch('symbol')

    render({ :template => 'currency_templates/step_two.html.erb'})
  end

  def third_currency
    @first_symbol = params.fetch('symbol')
    @second_symbol = params.fetch('symbol_2')
    url = ("https://api.exchangerate.host/convert?from=" + @first_symbol + "&to=" + @second_symbol)
    @raw_data = open(url).read
    @parsed_data = JSON.parse(@raw_data)
    @results = @parsed_data.fetch('info')
    @final_result = @results.fetch('rate')
    
    render({ :template => 'currency_templates/step_three.html.erb'})
  end
end