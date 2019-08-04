package grailswebapp

import grails.testing.web.taglib.TagLibUnitTest
import spock.lang.Specification

class MyCustomTaglibTagLibSpec extends Specification implements TagLibUnitTest<MyCustomTaglibTagLib> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
