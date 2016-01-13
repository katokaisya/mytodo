class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    posts_url
  end

  # 簡単なログによるチェック
  def verify_authenticity_token
    puts '-----------------------------'
    p session[:_csrf_token]
    p params[:authenticity_token]
    puts '-----------------------------'
    super # superを入れておけば、プログラムを壊さない
  end

end
