package grailswebapp

import grails.plugin.springsecurity.annotation.Secured
import org.apache.tomcat.util.http.fileupload.FileUtils


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

        def profilePicture = params.profilePicture
        def profilePictureName = profilePicture.originalFilename.toString()
        def imageDir = new File(servletContext.getRealPath("/")+"profilePicture/")
        if(imageDir.exists()){
            File destinationProfilePicture = new File(imageDir, profilePictureName)
            st.profilePicture = profilePictureName
            profilePicture.transferTo(destinationProfilePicture)
        }

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

    @Secured('permitAll')
    def image(){
        def student = Student.findById(params.id)
        FileInputStream fileInputStream
        if(new File(servletContext.getRealPath("/")+"profilePicture/"+student.profilePicture).exists()){
            fileInputStream = new FileInputStream(new File(servletContext.getRealPath("/")+"profilePicture/"+student.profilePicture))
        }else{
            fileInputStream = new FileInputStream(new File(servletContext.getRealPath("/")+"profilePicture/default.jpg"))
        }
        byte[] request_p = fileInputStream.bytes
        response.contentLength = request_p.size()
        OutputStream out = response.outputStream
        out.write(request_p)
        fileInputStream.close()
        out.close()
    }

    def show(){
        def student = Student.findById(params.id)
        [student: student]
    }

}