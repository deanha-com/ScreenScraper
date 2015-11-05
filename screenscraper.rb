#!/usr/bin/env ruby

require 'sinatra'
require 'rubygems'
require 'open-uri'
require 'nokogiri'

get '/' do

	url = "http://www.deanha.com/blog/"
	@doc = Nokogiri::HTML(open(url))

 #  	@doc.css('.container-wrap, #post-area, .post-content').each do |items|
 #    	@title = items.css('#post-area .title').text
 #    	@content = items.css('#post-area p').text
 #    	@date = items.css('#post-area .date').text
 #  	end

	erb :show, :layout => :show
end