import productdonation.Category
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_productdonation_category_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/category/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: categoryInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("category.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'maxlength':("50"),'required':(""),'value':(categoryInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: categoryInstance, field: 'createdDate', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("category.createdDate.label"),'default':("Created Date")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',19,['name':("createdDate"),'precision':("day"),'value':(categoryInstance?.createdDate)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: categoryInstance, field: 'products', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("category.products.label"),'default':("Products")],-1)
printHtmlPart(6)
for( p in (categoryInstance?.products) ) {
printHtmlPart(7)
createTagBody(2, {->
expressionOut.print(p?.encodeAsHTML())
})
invokeTag('link','g',31,['controller':("product"),'action':("show"),'id':(p.id)],2)
printHtmlPart(8)
}
printHtmlPart(9)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')]))
})
invokeTag('link','g',34,['controller':("product"),'action':("create"),'params':(['category.id': categoryInstance?.id])],1)
printHtmlPart(10)
expressionOut.print(hasErrors(bean: categoryInstance, field: 'status', 'error'))
printHtmlPart(11)
invokeTag('message','g',43,['code':("category.status.label"),'default':("Status")],-1)
printHtmlPart(12)
invokeTag('checkBox','g',46,['name':("status"),'value':(categoryInstance?.status)],-1)
printHtmlPart(13)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1430449823175L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
