require 'pry'
require 'open-uri'
require 'nokogiri'
require 'rubygems'

def get_the_cryptonames()
    url = "https://coinmarketcap.com/all/views/all/"
    names = Array.new
    page = Nokogiri::HTML(open(url))
    getdata = page.css('//*[@id="currencies-all"]/tbody/tr/td.no-wrap.currency-name/a').each do |link|
        data = link.text
        names << data
    end
    return names
end

def get_the_cryptovalue()
    url = "https://coinmarketcap.com/all/views/all/"
    value = Array.new
    page = Nokogiri::HTML(open(url))
    getdataval = page.css('//*[@id="currencies-all"]/tbody/tr/td[5]').each do |val|
        dataval = val.text
        value << dataval
    end
    return value
end

def perform()
    the_crypto_value = get_the_cryptovalue
    the_crypto_names = get_the_cryptonames

    d = 0
    c = 0
    while c < the_crypto_names.length
        puts "########################"
        puts the_crypto_names[d] + the_crypto_value [d]
        puts "########################"
        d = d + 1
        c = c + 1
    end 
end

perform