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
    work = Task.new(work_params)
    work.save
    
    redirect_to tasks_path
  end

  def edit 
    work_id = work_params[:id]
    @work = Work.find_by(id: work_id)

    if @work.nil?
      flash[:failure] = "Media edit failed to save"
      redirect_to works_path
    end
  end
  
def update 
  work = Work.find_by(id: work_params[:id])

  if work.nil?
    flash[:error] = "Could not find work with id: #{work_params[:id]}"
      redirect_to root_path
          return
  end
  work.title = work_params[:title]
  work.description = work_params[:description]
  work.creator = work_params[:creator]
  work.creator = work_params[:publication_year]
  work.save

  # add some flash success message here

  redirect_to works_path(work)
end

def destroy
end

private
def work_params
  return params.require(:work).permit(:title, :description, :id, :creator, :publication_year)
end

end
