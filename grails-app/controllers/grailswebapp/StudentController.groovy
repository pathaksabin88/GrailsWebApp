package grailswebapp

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class StudentController {

    def index() {
        def studentList = Student.findAll()
        [stdList: studentList]
    }

    @Secured('ROLE_ADMIN')
    def create(){

    }

    @Secured('ROLE_ADMIN')
    def save(){

        Student st = new Student()
        st.rollNumber = Integer.parseInt(params.rollNumber)
        st.name = params.name
        st.address = params.address
        st.age = Integer.parseInt(params.age)
        st.grade = params.grade

        st.save(flush: true, failOnError: true)

        redirect(controller: "student",action: "index")

    }

    @Secured('ROLE_ADMIN')
    def edit(){

        def id = params.id
        def student = Student.findById(id)
        [student: student]

    }

    @Secured('ROLE_ADMIN')
    def update(){

        def id = params.id
        def st = Student.findById(id)
        st.rollNumber = Integer.parseInt(params.rollNumber)
        st.name = params.name
        st.address = params.address
        st.age = Integer.parseInt(params.age)
        st.grade = params.grade

        st.save(flush: true, failOnError: true)

        redirect(controller: "student",action: "index")

    }

    @Secured('ROLE_ADMIN')
    def delete(){

        def id = params.id
        def st = Student.findById(id)
        st.delete(flush: true,failOnError: true)
        redirect(controller: "student", action: "index")

    }

}
