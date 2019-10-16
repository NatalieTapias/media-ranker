class WorksController < ApplicationController
  def index
    @works = Work.all
  end
  
  def show
    work_id = params[:id].to_i
    @work = Work.find_by(id: work_id)
    if @work.nil?
      flash[:error] = "Could not find work with id: #{params[:id]}"
      redirect_to works_path
    end
  end
  
  def new
    @work = Work.new
  end
  
  def create
    work = Work.new(work_params)
    work.save
    
    redirect_to work_path(work)
  end

  def edit 
    work_id = params[:id]
    @work = Work.find_by(id: work_id)

    if @work.nil?
      flash[:failure] = "Media edit failed to save"
      redirect_to works_path
    end
  end
  
  def update 
    work = Work.find_by(id: params[:id])

    if work.nil?
      flash[:error] = "Could not find work with id: #{params[:id]}"
      redirect_to root_path
      return
    end

    work.update_attributes(work_params)
    # add some flash success message here
    redirect_to work_path(work)
  end

  def destroy
  end

  private

  def work_params
    return params.require(:work).permit(:title, :description, :creator, :publication_year, :category)
  end

end
