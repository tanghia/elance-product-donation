import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_productdonation_indexindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/index/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',5,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',5,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(4)
for( i in ((0..< hotProducts.size())) ) {
printHtmlPart(5)
if(true && (i==0)) {
printHtmlPart(6)
expressionOut.print(i)
printHtmlPart(7)
}
else {
printHtmlPart(6)
expressionOut.print(i)
printHtmlPart(8)
}
printHtmlPart(9)
}
printHtmlPart(10)
loop:{
int i = 0
for( product in (hotProducts) ) {
printHtmlPart(5)
if(true && (i==0)) {
printHtmlPart(11)
expressionOut.print(product.photo?.encodeBase64())
printHtmlPart(12)
expressionOut.print(product.productName)
printHtmlPart(13)
expressionOut.print(product.productName)
printHtmlPart(14)
expressionOut.print(product.description)
printHtmlPart(15)
}
else {
printHtmlPart(16)
expressionOut.print(product.photo?.encodeBase64())
printHtmlPart(12)
expressionOut.print(product.productName)
printHtmlPart(13)
expressionOut.print(product.productName)
printHtmlPart(14)
expressionOut.print(product.description)
printHtmlPart(15)
}
printHtmlPart(17)
i++
}
}
printHtmlPart(18)
loop:{
int i = 0
for( product in (newProducts) ) {
printHtmlPart(19)
expressionOut.print(product.photo?.encodeBase64())
printHtmlPart(20)
expressionOut.print(product.productName)
printHtmlPart(21)
expressionOut.print(product.productName)
printHtmlPart(22)
expressionOut.print(product.description)
printHtmlPart(23)
i++
}
}
printHtmlPart(24)
loop:{
int i = 0
for( product in (userPostedProducts) ) {
printHtmlPart(25)
expressionOut.print(product.photo?.encodeBase64())
printHtmlPart(12)
expressionOut.print(product.productName)
printHtmlPart(26)
expressionOut.print(product.productName)
printHtmlPart(27)
expressionOut.print(product.description)
printHtmlPart(28)
createClosureForHtmlPart(29, 3)
invokeTag('link','g',132,['action':("viewPostedUser"),'params':([uid:product.user.id]),'class':("btn btn-primary"),'role':("button")],3)
printHtmlPart(30)
i++
}
}
printHtmlPart(31)
loop:{
int i = 0
for( product in (adminPostedProducts) ) {
printHtmlPart(25)
expressionOut.print(product.photo?.encodeBase64())
printHtmlPart(12)
expressionOut.print(product.productName)
printHtmlPart(26)
expressionOut.print(product.productName)
printHtmlPart(27)
expressionOut.print(product.description)
printHtmlPart(32)
createClosureForHtmlPart(29, 3)
invokeTag('link','g',157,['action':("viewPostedUser"),'params':([uid:product.user.id]),'class':("btn btn-primary"),'role':("button")],3)
printHtmlPart(30)
i++
}
}
printHtmlPart(33)
})
invokeTag('captureBody','sitemesh',173,[:],1)
printHtmlPart(34)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1431854905780L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
