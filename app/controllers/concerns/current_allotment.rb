module CurrentAllotment
  extend ActiveSupport::Concern

  private

  def set_allotment 
    @allotment = Allotment.find(session[:allotment_id])
  rescue ActiveRecord::RecordNotFound
	@allotment = Allotment.create
	session[:allotment_id] = @allotment.id
  end
end