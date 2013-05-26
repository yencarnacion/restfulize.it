import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class LoginSuccessController {

    def index() {
        if(SpringSecurityUtils.ifAnyGranted('ROLE_USER')){
            redirect(controller:'patient', action:'list')
        } else if (SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')) {
            redirect(uri: "/admin/dashboard")
        } else {
            redirect(uri: "/logout")
        }
    }
}