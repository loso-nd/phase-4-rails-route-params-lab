class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    #byebug
    student = Student.find(params[:id].to_i)
    render json: student
  end

end

#byebug is a powerful to to identify problem when creating views. 

#Understanding that the test asked to return the id first first student which is an integer. However, without [.to_i]I would be returning a string and not an integer. However

#In addition, we can see that in byebug, the hash did not have a key of student, rather a key of id. 


# (byebug) params
# #<ActionController::Parameters {"controller"=>"students", "action"=>"show", "id"=>"1"} permitted: false>
# (byebug) params[:id].to_i
# 1
# (byebug) Student.find(params[:id].to_i)
# #<Student id: 1, first_name: "Dwayne", last_name: "Johnson", grade: 99, created_at: "2021-07-21 17:41:52.307655000 +0000", updated_at: "2021-07-21 17:41:52.307655000 +0000">
# (byebug) 