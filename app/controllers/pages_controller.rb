class PagesController < ApplicationController
  def home
    @time = Date.today
  end

  def about
  end

  def contact
    # this is the name of the input on the form in the html for contact
    search = params[:member]

    @members = ['ben', 'Rebecca', 'Katherine', 'Alex']

    if search.present?
      @members = @members.select { |name| name.downcase == search.downcase }
    end
  end
end
