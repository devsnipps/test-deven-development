class WelcomeController < ApplicationController
  def index
  end
  
  def about
  end
  
  def contact
  end
  
  def report
    ReportWorker.perform_async('12-30-2017', '5-5-2018')
    render text: 'Report generatied and added to queue'
  end
  
end
