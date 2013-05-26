package it.restfulize

class DatabaseCredentials {

    String databaseUsername = ""
    String databasePassword = ""

    static constraints = {
        databaseUsername()
        databasePassword()
    }

}
