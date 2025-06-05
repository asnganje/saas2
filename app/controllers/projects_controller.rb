class ProjectsController < ApplicationController
  layout 'admin'
  def index
    @projects = []
    10.times.each do |i|
      @projects << "project#{i}"
    end
  end
end
