class ExamineesController < ApplicationController


  def create
    @medical = Medical.find(params[:medical_id])

    @office  = Office.find(2)
    @examinee =  @medical.examinees.build
    @examinee.name = params[:examinee][:name]
    @examinee.office = @office
    @examinee.save
    redirect_to medical_path(@medical.id)
  end

  def destroy
    @examinee = Examinee.find(params[:id])
    @examinee.destroy

    redirect_to medical_path(params[:medical_id])
  end

  def show
    @examinee = Examinee.find(params[:id])
    @sexs = Sex.all
    @relationships = Relationship.all
  end

  def edit
    @examinee  = Examinee.find(params[:id])
    str = "edit::::::::::::::::" << @examinee.name
    print(str)
    @sexs = Sex.all
    @relationships = Relationship.all

  end

  def update
    @examinee  = Examinee.find(params[:id])
    str = "update::::::::::::::" << @examinee.name << ":::" << params[:medical_id]
    print(str)
    if @examinee.update_attributes(examinee_params)
      # redirect_to @examinee
      redirect_to medical_path(params[:medical_id])
    else
      render 'edit'
    end

  end

  private
    def examinee_params
        params[:examinee].permit(:name, :relationship, :sex)
    end

end
