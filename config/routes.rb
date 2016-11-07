Rails.application.routes.draw do
  
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/", { :controller => "calculations", :action => "square" })

  get("/square_root/", { :controller => "calculations", :action => "square_root" })

  get("/random/", { :controller => "calculations", :action => "random" })

  get("/payment/", { :controller => "calculations", :action => "payment" })


end
