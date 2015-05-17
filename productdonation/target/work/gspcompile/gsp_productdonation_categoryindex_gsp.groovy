import productdonation.Category
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_productdonation_categoryindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/category/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("admin")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'category.label', default: 'Category'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
if(true && (flash.message)) {
printHtmlPart(5)
expressionOut.print(flash.message)
printHtmlPart(6)
}
printHtmlPart(7)
invokeTag('sortableColumn','g',19,['property':("name"),'title':(message(code: 'category.name.label', default: 'Name'))],-1)
printHtmlPart(8)
invokeTag('sortableColumn','g',21,['property':("createdDate"),'title':(message(code: 'category.createdDate.label', default: 'Created Date'))],-1)
printHtmlPart(8)
invokeTag('sortableColumn','g',23,['property':("status"),'title':(message(code: 'category.status.label', default: 'Status'))],-1)
printHtmlPart(9)
loop:{
int i = 0
for( categoryInstance in (categoryInstanceList) ) {
printHtmlPart(10)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(11)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: categoryInstance, field: "name"))
})
invokeTag('link','g',31,['action':("show"),'id':(categoryInstance.id)],3)
printHtmlPart(12)
invokeTag('formatDate','g',33,['date':(categoryInstance.createdDate)],-1)
printHtmlPart(12)
invokeTag('formatBoolean','g',35,['boolean':(categoryInstance.status)],-1)
printHtmlPart(13)
i++
}
}
printHtmlPart(14)
invokeTag('paginate','g',42,['total':(categoryInstanceCount ?: 0)],-1)
printHtmlPart(15)
})
invokeTag('captureBody','sitemesh',45,[:],1)
printHtmlPart(16)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1431804873759L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
