module SessionsHelper

	def sign_in(associate)
    cookies.permanent[:remember_token] = associate.remember_token
    self.current_associate = associate
  end

  def signed_in?
    !current_associate.nil?
  end

  def current_associate
    @current_associate ||= Associate.find_by_remember_token(cookies[:remember_token])
  end

  def current_associate=(associate)
    @current_associate = associate
  end

  def sign_out
    self.current_associate = nil
    cookies.delete(:remember_token)
  end

end
