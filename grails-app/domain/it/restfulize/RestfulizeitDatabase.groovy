package it.restfulize

class RestfulizeitDatabase {

    String nickname
    String databaseDriverClassname
    String databaseUrl
    DatabaseCredentials databaseCredentials = new DatabaseCredentials()

    static constraints = {
        nickname(unique: true)
        databaseUrl()
        databaseDriverClassname()
        databaseCredentials()
    }

    static embedded = ['databaseCredentials']
}
