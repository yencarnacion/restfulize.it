package it.restfulize



import org.junit.*
import grails.test.mixin.*

@TestFor(RestfulizeitDatabaseController)
@Mock(RestfulizeitDatabase)
class RestfulizeitDatabaseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/restfulizeitDatabase/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.restfulizeitDatabaseInstanceList.size() == 0
        assert model.restfulizeitDatabaseInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.restfulizeitDatabaseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.restfulizeitDatabaseInstance != null
        assert view == '/restfulizeitDatabase/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/restfulizeitDatabase/show/1'
        assert controller.flash.message != null
        assert RestfulizeitDatabase.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/restfulizeitDatabase/list'

        populateValidParams(params)
        def restfulizeitDatabase = new RestfulizeitDatabase(params)

        assert restfulizeitDatabase.save() != null

        params.id = restfulizeitDatabase.id

        def model = controller.show()

        assert model.restfulizeitDatabaseInstance == restfulizeitDatabase
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/restfulizeitDatabase/list'

        populateValidParams(params)
        def restfulizeitDatabase = new RestfulizeitDatabase(params)

        assert restfulizeitDatabase.save() != null

        params.id = restfulizeitDatabase.id

        def model = controller.edit()

        assert model.restfulizeitDatabaseInstance == restfulizeitDatabase
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/restfulizeitDatabase/list'

        response.reset()

        populateValidParams(params)
        def restfulizeitDatabase = new RestfulizeitDatabase(params)

        assert restfulizeitDatabase.save() != null

        // test invalid parameters in update
        params.id = restfulizeitDatabase.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/restfulizeitDatabase/edit"
        assert model.restfulizeitDatabaseInstance != null

        restfulizeitDatabase.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/restfulizeitDatabase/show/$restfulizeitDatabase.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        restfulizeitDatabase.clearErrors()

        populateValidParams(params)
        params.id = restfulizeitDatabase.id
        params.version = -1
        controller.update()

        assert view == "/restfulizeitDatabase/edit"
        assert model.restfulizeitDatabaseInstance != null
        assert model.restfulizeitDatabaseInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/restfulizeitDatabase/list'

        response.reset()

        populateValidParams(params)
        def restfulizeitDatabase = new RestfulizeitDatabase(params)

        assert restfulizeitDatabase.save() != null
        assert RestfulizeitDatabase.count() == 1

        params.id = restfulizeitDatabase.id

        controller.delete()

        assert RestfulizeitDatabase.count() == 0
        assert RestfulizeitDatabase.get(restfulizeitDatabase.id) == null
        assert response.redirectedUrl == '/restfulizeitDatabase/list'
    }
}
