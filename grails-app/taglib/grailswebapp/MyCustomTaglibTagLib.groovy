package grailswebapp

class MyCustomTaglibTagLib {

    def renderListValues = { attrs, body ->

        def list = attrs.values
        list.each{
            out << it
        }

    }

    def emoticon = { attrs, body ->
        out << body() << (attrs.happy == 'true' ? " :-)" : " :-(")
    }

}
