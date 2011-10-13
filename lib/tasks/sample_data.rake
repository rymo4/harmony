

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    
    make_users
 
  end
end
  
def make_users
    
    User.create!(
                 :email => "abc1234@columbia.edu",
                 :password => "password"#,
                 #:password_confirmation => "password"
                 )
      
end

def make_content
  Page.create!(
    :permalink => "/home",
    :name => "home",
    :content => 
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae luctus massa. Nullam nunc diam, tempor sit amet cursus quis, tempor non turpis. Quisque nec leo eu purus mattis aliquam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Donec ut dolor at augue dapibus scelerisque. Maecenas semper orci ut nulla feugiat dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rutrum ipsum sit amet sapien gravida varius. 

    <center><img src="http://farm4.static.flickr.com/3335/3501475130_eac3d750a7.jpg" width="500" height="323" alt="Music fair."></center> 

    Fusce et urna in turpis feugiat dignissim sit amet tempus sem. Aliquam scelerisque justo vel eros congue tristique. Nam eget augue augue. Mauris et rhoncus justo. Sed sed justo lorem, eu egestas nibh. Ut non augue id mauris ullamcorper mollis hendrerit sit amet turpis. Fusce rutrum mauris eget est tincidunt in vehicula libero facilisis. Donec sit amet purus sed tortor ornare laoreet nec vitae arcu. *Donec pellentesque, *massa vel pharetra accumsan, libero mauris dictum nisi, ac auctor leo odio a purus. Aenean et pretium lacus. Nullam porttitor tortor quis odio iaculis rutrum. Etiam tempus lacus eu ante venenatis tincidunt. Morbi lacinia ante ac libero consequat vel consectetur purus tincidunt. Integer sollicitudin molestie magna porta venenatis. Duis non sodales odio. Integer sed nisi quam. Phasellus vitae lacus in velit rhoncus tincidunt non non est. Morbi rhoncus sem eget tortor euismod quis sollicitudin dolor lobortis. Aenean aliquet tempus aliquam. Praesent sit amet risus tempor ipsum placerat fringilla. Proin vel est non arcu dictum vulputate. Nullam vitae faucibus diam. Nam vitae libero mauris. Donec purus nisi, hendrerit vel adipiscing vitae, porttitor a eros. Nulla facilisi. 

    <center><img src="http://farm4.static.flickr.com/3498/3948371773_e79084b5a0.jpg" width="500" height="436" alt="I choose the music"></center> 

    Curabitur pulvinar porta elit, a mollis velit varius eu. Nulla commodo tristique malesuada. Aliquam eget eleifend dui. Aenean in lacus vitae nisl tempus cursus. Sed scelerisque lorem a nulla gravida adipiscing. Etiam rutrum vulputate ornare. Pellentesque ornare, lacus nec cursus pharetra, orci mi sollicitudin tellus, vitae feugiat massa mauris et ipsum. Cras est orci, mattis eget aliquam ac, fringilla vel ligula. Nullam a magna lacus. Sed a tortor turpis, eget bibendum augue. Pellentesque ut arcu ante. 
    '
  )
  
end





    
 
