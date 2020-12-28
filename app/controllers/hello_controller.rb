class HelloController < ApplicationController
    layout = 'hello'

    def index
        @header = 'Layout sample'
        @footer = 'copyright zoniha'
        @title = 'New'
        @msg = 'This is a sample page.'
    end
end
