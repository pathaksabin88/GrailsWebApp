package grailswebapp

class StudentController {

    def index() {
        def studentList = Student.findAll()
        [stdList: studentList]
    }

    def create(){

    }

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

    def edit(){

        def id = params.id
        def student = Student.findById(id)
        [student: student]

    }


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


    def delete(){

        def id = params.id
        def st = Student.findById(id)
        st.delete(flush: true,failOnError: true)
        redirect(controller: "student", action: "index")

    }

}
