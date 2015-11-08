module ApplicationHelper
  def nav_links
    links = [] 

    if user_signed_in?
      links << link_to('Adventures', :root)
      links << link_to('Settings', :edit_user_registration)
      links << link_to('Sign Out', :destroy_user_session, method: :delete)
    else
      links << link_to('Sign In', :new_user_session)
    end

    links
  end
end
