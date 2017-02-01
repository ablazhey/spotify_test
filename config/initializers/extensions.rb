Dir["#{Rails.root}/app/services/*.rb"].each {|file| require file }
Dir["#{Rails.root}/app/clients/*.rb"].each {|file| require file }
