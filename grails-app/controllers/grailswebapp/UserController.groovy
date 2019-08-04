package grailswebapp

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class UserController {

    def mailService

    def index() {
        def userList = User.findAll()
        [userList: userList]
    }

    def create(){
    }

    def save(){
        User user = new User()
        def name = params.name
        def email = params.email
        def username = params.username
        def password = params.password
        def role = Role.findById(params.role)

        user.name = name
        user.email = email
        user.username = username
        user.password = password
        user.save(flush: true, failOnError: true)

        UserRole userRole = new UserRole(user: user, role: role)
        userRole.save(flush: true, failOnError: true)

        def b = "\nHello,"+
                "\n\nThis mail is to inform you  that your account has been created for SMS"+
                "\n\nTo log in please use the following credentials:"+
                "\n\n\tUsername: "+ username +
                "\n\n\tPassword: " + password +
                "\n\nThanks," +
                "\nSMS ADMIN"
        mailService.sendMail {
            to email
            subject "New User Credentails"
            text b
        }

        redirect(action: 'index')
    }

    def edit(){
        def user = User.findById(params.id)
        [user:user]
    }

    def update(){

    }

    def delete(){
        def user = User.findById(params.id)
        def userRole = UserRole.findByUser(user)
        userRole.delete(flush: true, failOnError: true)
        user.delete(flush: true, failOnError: true)
        redirect(action: 'index')
    }

}
