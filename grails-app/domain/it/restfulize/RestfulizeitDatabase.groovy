package it.restfulize

class RestfulizeitDatabase {

    String nickname
    String databaseDriverClassname
    String databaseUrl
    String pathOnServer
    Boolean secured
    Credentials securedCredentials
    Credentials databaseCredentials

    static constraints = {
        nickname(unique: true)
        databaseUrl()
        databaseDriverClassname()
        pathOnServer()
        secured()
        securedCredentials()
        //databaseCredentials()
    }

    static embedded = ['securedCredentials', 'databaseCredentials']
}
