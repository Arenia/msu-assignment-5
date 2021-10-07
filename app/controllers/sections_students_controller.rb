class SectionsStudentsController < ApplicationController
  before_action :set_sections_student, only: [:show, :edit, :update, :destroy]

  # GET /sections_students
  # GET /sections_students.json
  def index
    @sections_students = SectionsStudents.all
  end

  # GET /sections_students/1
  # GET /sections_students/1.json
  def show
  end

  # GET /sections_students/new
  def new
    @sections_student = SectionsStudents.new
  end

  # GET /sections_students/1/edit
  def edit
  end

  # POST /sections_students
  # POST /sections_students.json
  def create
    @sections_student = SectionsStudents.new(sections_student_params)

    respond_to do |format|
      if @sections_student.save
        format.html { redirect_to @sections_student, notice: 'Sections students was successfully created.' }
        format.json { render :show, status: :created, location: @sections_student }
      else
        format.html { render :new }
        format.json { render json: @sections_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections_students/1
  # PATCH/PUT /sections_students/1.json
  def update
    respond_to do |format|
      if @sections_student.update(sections_student_params)
        format.html { redirect_to @sections_student, notice: 'Sections students was successfully updated.' }
        format.json { render :show, status: :ok, location: @sections_student }
      else
        format.html { render :edit }
        format.json { render json: @sections_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections_students/1
  # DELETE /sections_students/1.json
  def destroy
    @sections_student.destroy
    respond_to do |format|
      format.html { redirect_to sections_students_index_url, notice: 'Sections students was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sections_student
      @sections_student = SectionsStudents.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sections_student_params
      params.require(:sections_student).permit(:section_id, :student_id)
    end
end
