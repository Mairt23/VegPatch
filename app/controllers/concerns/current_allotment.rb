module CurrentAllotment
  extend ActiveSupport::Concern

  private

  def set_allotment 
    @cart = Allotment.find(session[:allotment_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Allotment.create
    session[:allotment_id] = @allotment.id
  end
end