class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @jobs_by_date = @jobs.group_by(&:due_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])
    if @job.save
      redirect_to @job, notice: "Created job."
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      redirect_to @job, notice: "Updated job."
    else
      render :edit
    end
  end
  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end
  private
     # Use callbacks to share common setup or constraints between actions.
     def set_job
       @job = Job.find(params[:id])
     end
end
