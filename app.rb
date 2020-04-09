require "sinatra"

titles = {
  "jobdetails" => "Software Engineer | Able.co",
  "signup" => "Sign up",
  "signup-complete" => "Complete your Signup",
  "login" => "Login",
  "faq" => "FAQ",
  "jobs" => "Jobs",
  "password-recovery" => "Forgot Password",
  "password-recovery-sent" => "Forgot password success"
}

get "/:page?" do
  if params["page"].nil?
    erb :index, layout: :layout, :locals => { :title => "Home" }
  elsif titles[params["page"]]
    erb params["page"].to_sym, layout: :layout, :locals => { :title => titles[params["page"]]}
  end
end
