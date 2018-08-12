class ReportWorker
    include Sidekiq::Worker
    sidekiq_options retry: false
    
    def perform(start_date, end_date)
        
        puts 'side kiq worker generatong reports #{start_date} and #{end_date}'
        
    end
end