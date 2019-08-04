package grailswebapp

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class FacultyController {

    FacultyService facultyService

    def index() {
        def facultyList = Faculty.findAll()
        [facultyList:facultyList]
    }

    def create() {
    }

    def save() {
        Faculty faculty = new Faculty()
        faculty.name = params.name
        faculty.address = params.address
        faculty.department = params.department
        faculty.contactNumber = params.contactNumber
        faculty.save(flush: true, failOnError: true)
        redirect(action: 'index')
    }

    def edit() {
        def faculty = Faculty.findById(params.id)
        [faculty:faculty]
    }

    def update() {
        def facultyToUpdate = Faculty.findById(params.id)
        facultyToUpdate.name = params.name
        facultyToUpdate.address = params.address
        facultyToUpdate.department = params.department
        facultyToUpdate.contactNumber = params.contactNumber
        facultyToUpdate.save(flush: true, failOnError: true)
        redirect(action: 'index')
    }

    def delete() {
        def facultyToDelete = Faculty.findById(params.id)
        facultyToDelete.delete(flush: true, failOnError: true)
        redirect(action: 'index')
    }

}
