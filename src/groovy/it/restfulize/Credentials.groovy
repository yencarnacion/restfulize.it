package it.restfulize

class Credentials {

    String credUsername = ""
    String credPassword = ""

    static constraints = {
        credUsername()
        credPassword()
    }

}
