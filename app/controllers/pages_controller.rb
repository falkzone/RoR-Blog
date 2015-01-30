class PagesController < ApplicationController
  skip_before_filter :require_login, :only => [ :about, :impress, :contact ]
  
  def about
    
  end
  
  def impress
    
  end
  
  def contact
    
  end
end
