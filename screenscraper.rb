#!/usr/bin/env ruby

require 'sinatra'
require 'rubygems'
require 'open-uri'
require 'nokogiri'

get '/' do
	url = "http://www.deanha.com/blog/"
	@doc = Nokogiri::HTML(open(url))

	erb :show, layout :show
end
