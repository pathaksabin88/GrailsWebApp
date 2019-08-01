package grailswebapp

class BootStrap {

    def init = { servletContext ->
        User adminUser = User.findByUsername("admin_user")
        User normalUser = User.findByUsername("test_user")
        if(!adminUser){
            User user = User.findOrCreateWhere(username: 'admin_user',password: 'admin_user123',email: 'admin_user@gmail.com')
            user.save(flush: true, failOnError: true)

            Role roleAdmin = Role.findOrCreateWhere(authority: 'ROLE_ADMIN')
            roleAdmin.save(flush: true, failOnError: true)

            UserRole.findOrSaveWhere(role: roleAdmin, user: user)
        }
        if(!normalUser){
            User user = User.findOrCreateWhere(username: 'test_user',password: 'test_user123',email: 'test_user@gmail.com')
            user.save(flush: true, failOnError: true)

            Role roleUser = Role.findOrCreateWhere(authority: 'ROLE_USER')
            roleUser.save(flush: true, failOnError: true)

            UserRole.findOrSaveWhere(role: roleUser, user: user)
        }

        String requiredDir = servletContext.getRealPath("/")+"profilePicture/"

        (new File(requiredDir).exists())?:(new File(requiredDir).mkdir())
    }
    def destroy = {
    }
}
