class Adapters::OnlyAdmins < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    current_user.admin?
  end

end
