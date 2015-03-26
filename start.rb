require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.repeat '1s' do
  puts 'hi'
end

scheduler.join
