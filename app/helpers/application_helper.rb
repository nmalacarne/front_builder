module ApplicationHelper
  def nav_links
    links = [] 

    if user_signed_in?
      links << {:text => 'Adventure Fronts', :target => :root}
    else
      links << {:text => 'Sign In', :target => :new_user_session}
    end

    links
  end
end
