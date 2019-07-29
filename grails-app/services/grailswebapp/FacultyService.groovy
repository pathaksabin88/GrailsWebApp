package grailswebapp

import grails.gorm.services.Service

@Service(Faculty)
interface FacultyService {

    Faculty get(Serializable id)

    List<Faculty> list(Map args)

    Long count()

    void delete(Serializable id)

    Faculty save(Faculty faculty)

}