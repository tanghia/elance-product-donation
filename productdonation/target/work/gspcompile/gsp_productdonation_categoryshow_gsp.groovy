import productdonation.Category
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_productdonation_categoryshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/category/show.gsp" }
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
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
if(true && (categoryInstance?.name)) {
printHtmlPart(8)
invokeTag('message','g',19,['code':("category.name.label"),'default':("Name")],-1)
printHtmlPart(9)
invokeTag('fieldValue','g',21,['bean':(categoryInstance),'field':("name")],-1)
printHtmlPart(10)
}
printHtmlPart(11)
if(true && (categoryInstance?.createdDate)) {
printHtmlPart(12)
invokeTag('message','g',28,['code':("category.createdDate.label"),'default':("Created Date")],-1)
printHtmlPart(13)
invokeTag('formatDate','g',30,['date':(categoryInstance?.createdDate)],-1)
printHtmlPart(10)
}
printHtmlPart(11)
if(true && (categoryInstance?.status)) {
printHtmlPart(14)
invokeTag('message','g',37,['code':("category.status.label"),'default':("Status")],-1)
printHtmlPart(15)
invokeTag('formatBoolean','g',39,['boolean':(categoryInstance?.status)],-1)
printHtmlPart(10)
}
printHtmlPart(16)
createTagBody(2, {->
printHtmlPart(17)
createTagBody(3, {->
invokeTag('message','g',47,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',47,['class':("edit btn btn-success"),'action':("edit"),'resource':(categoryInstance)],3)
printHtmlPart(18)
invokeTag('actionSubmit','g',48,['class':("delete btn btn-success"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(19)
})
invokeTag('form','g',50,['url':([resource:categoryInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',52,[:],1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1431850523287L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
