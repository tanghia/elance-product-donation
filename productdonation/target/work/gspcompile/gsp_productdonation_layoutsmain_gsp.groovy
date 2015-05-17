import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_productdonation_layoutsmain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/main.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("Content-Type"),'content':("text/html; charset=UTF-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge,chrome=1")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',12,['default':("Grails")],-1)
})
invokeTag('captureTitle','sitemesh',12,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',12,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(2)
expressionOut.print(resource(dir: 'css', file: 'bootstrap.min.css'))
printHtmlPart(3)
expressionOut.print(resource(dir: 'css', file: 'bootstrap-theme.min.css'))
printHtmlPart(4)
expressionOut.print(resource(dir: 'js', file: 'jquery-1.11.2.js'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'js', file: 'bootstrap.min.js'))
printHtmlPart(6)
invokeTag('layoutHead','g',36,[:],-1)
printHtmlPart(1)
})
invokeTag('captureHead','sitemesh',37,[:],1)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(7)
expressionOut.print(resource(dir: 'images', file: 'Business-Donations.jpg'))
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
invokeTag('username','sec',56,[:],-1)
printHtmlPart(10)
createClosureForHtmlPart(11, 3)
invokeTag('link','g',58,['controller':("product")],3)
printHtmlPart(12)
createClosureForHtmlPart(13, 3)
invokeTag('link','g',61,['controller':("logout")],3)
printHtmlPart(14)
})
invokeTag('ifLoggedIn','sec',62,[:],2)
printHtmlPart(15)
createTagBody(2, {->
printHtmlPart(16)
createClosureForHtmlPart(17, 3)
invokeTag('link','g',66,['controller':("user"),'action':("create")],3)
printHtmlPart(12)
createClosureForHtmlPart(18, 3)
invokeTag('link','g',68,['controller':("login")],3)
printHtmlPart(12)
createClosureForHtmlPart(19, 3)
invokeTag('connect','oauth',69,['provider':("facebook"),'id':("facebook-connect-link")],3)
printHtmlPart(20)
})
invokeTag('ifNotLoggedIn','sec',70,[:],2)
printHtmlPart(21)
invokeTag('layoutBody','g',76,[:],-1)
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',83,[:],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1431849466894L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
