class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def confirm_registered_member()
    if user_signed_in? && !Member.exists?(user_id: current_user.id)
      redirect_to controller: 'members', action: "new"
    end
  end

  def only_admin()
    if user_signed_in? && current_user.id != 1
      redirect_to :root
    end
  end
end
