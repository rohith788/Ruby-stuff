require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'your.domain.com',
            :user_name            => 'gmail username here',
            :password             => 'gmail password here',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'reciver@gmail.com'
     from 'sender@gmail.com'
  subject 'test email'
     body 'This is a test.'
end