package it.restfulize

import org.springframework.dao.DataIntegrityViolationException

class RestfulizeitDatabaseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [restfulizeitDatabaseInstanceList: RestfulizeitDatabase.list(params), restfulizeitDatabaseInstanceTotal: RestfulizeitDatabase.count()]
    }

    def create() {
        [restfulizeitDatabaseInstance: new RestfulizeitDatabase(params)]
    }

    def save() {
        def restfulizeitDatabaseInstance = new RestfulizeitDatabase(params)
        if (!restfulizeitDatabaseInstance.save(flush: true)) {
            render(view: "create", model: [restfulizeitDatabaseInstance: restfulizeitDatabaseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), restfulizeitDatabaseInstance.id])
        redirect(action: "show", id: restfulizeitDatabaseInstance.id)
    }

    def show(Long id) {
        def restfulizeitDatabaseInstance = RestfulizeitDatabase.get(id)
        if (!restfulizeitDatabaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), id])
            redirect(action: "list")
            return
        }

        [restfulizeitDatabaseInstance: restfulizeitDatabaseInstance]
    }

    def edit(Long id) {
        def restfulizeitDatabaseInstance = RestfulizeitDatabase.get(id)
        if (!restfulizeitDatabaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), id])
            redirect(action: "list")
            return
        }

        [restfulizeitDatabaseInstance: restfulizeitDatabaseInstance]
    }

    def update(Long id, Long version) {
        def restfulizeitDatabaseInstance = RestfulizeitDatabase.get(id)
        if (!restfulizeitDatabaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (restfulizeitDatabaseInstance.version > version) {
                restfulizeitDatabaseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase')] as Object[],
                          "Another user has updated this RestfulizeitDatabase while you were editing")
                render(view: "edit", model: [restfulizeitDatabaseInstance: restfulizeitDatabaseInstance])
                return
            }
        }

        restfulizeitDatabaseInstance.properties = params

        if (!restfulizeitDatabaseInstance.save(flush: true)) {
            render(view: "edit", model: [restfulizeitDatabaseInstance: restfulizeitDatabaseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), restfulizeitDatabaseInstance.id])
        redirect(action: "show", id: restfulizeitDatabaseInstance.id)
    }

    def delete(Long id) {
        def restfulizeitDatabaseInstance = RestfulizeitDatabase.get(id)
        if (!restfulizeitDatabaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), id])
            redirect(action: "list")
            return
        }

        try {
            restfulizeitDatabaseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase'), id])
            redirect(action: "show", id: id)
        }
    }
}
