class SchoolsController < ApiController

  before_action :set_id, :only=> [:show, :edit, :update, :destroy]
  
  # GET /schools
  def index
    @schools = School.select("id, name").all
    render json: @schools.to_json
  end

  # GET /schools/:id
  def show
    render json: @school.to_json(:include => { :school_details => { :only => [:id, :contact_numbers] }})
  end

  private

  def set_id
    @school = School.find(params[:id])
  end

end
