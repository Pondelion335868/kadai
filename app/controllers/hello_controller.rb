# coding: utf-8

class HelloController < ApplicationController
	def index
		render :text => 'Hello, world!'
	end
end
