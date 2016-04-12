class PagesController < ApplicationController
  def home
  end

  def contact_form
    flash[:notice] = "Thank you for your question, we 'll get back to you pretty soon!"
    redirect_to root_path
  end
end
