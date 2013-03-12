class PagelistingController < ApplicationController
  
  def pagination
    @allpage = Job.count
    allpagecount = params[:allpagecount]
    allpage=params[:allpage]
    @jobs = Job.find(
        :all,
        :order => 'created_at DESC',
        :limit =>4,
        :offset => allpagecount
      )
    respond_to do |format|
      format.js
    end
  end
  
  def index
    @allpage = Job.count
    @jobs = Job.find(
        :all,
        :order => 'created_at DESC',
        :limit =>4
      )
  end
  
  def cancel
    @jobs = Job.find(
        :all,
        :order => 'created_at DESC',
        :limit =>4
      )
  end
  def jobinput
    @allpage = Job.count
    respond_to do |format|
      format.js
    end
  end
  
  def review
    
    id = params[:id]
    @job= Job.find(id)
    respond_to do |format|
      format.js
    end
  end
  
  
  def jobresult
    
    subject = params[:subject]      
    description  = params[:description]       
    price = params[:price]
    
    if subject != "" and description != "" and price != ""
      jobs = Job.new
      jobs.subject = subject
      jobs.description = description
      jobs.price = price
      jobs.save
      @allpage = Job.count
      @jobs = Job.find(
          :all,
          :order => 'created_at DESC',
          :limit =>4
        )
      respond_to do |format|
        format.js
      end
      
    end
  end
  
  
end
