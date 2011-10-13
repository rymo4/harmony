
namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    
    make_users
 
  end
end
  
def make_users
    
    User.create!(
                 :email => "cl1636@stern.nyu.edu",
                 :password => "password"#,
                 #:password_confirmation => "password"
                 )
      
end






    
 
