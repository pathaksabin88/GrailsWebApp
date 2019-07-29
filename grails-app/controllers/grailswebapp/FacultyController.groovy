package grailswebapp

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class FacultyController {

    FacultyService facultyService

    def index() {
        def facultyList = Faculty.findAll()
        [facultyList:facultyList]
    }

    def show(Long id) {
        respond facultyService.get(id)
    }

    def create() {
        respond new Faculty(params)
    }

    def save(Faculty faculty) {
        if (faculty == null) {
            notFound()
            return
        }

        try {
            facultyService.save(faculty)
        } catch (ValidationException e) {
            respond faculty.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'faculty.label', default: 'Faculty'), faculty.id])
                redirect faculty
            }
            '*' { respond faculty, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond facultyService.get(id)
    }

    def update(Faculty faculty) {
        if (faculty == null) {
            notFound()
            return
        }

        try {
            facultyService.save(faculty)
        } catch (ValidationException e) {
            respond faculty.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'faculty.label', default: 'Faculty'), faculty.id])
                redirect faculty
            }
            '*'{ respond faculty, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        facultyService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'faculty.label', default: 'Faculty'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'faculty.label', default: 'Faculty'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
