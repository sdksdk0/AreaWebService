
package cn.tf.service;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the cn.tf.service package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _QueryAreaResponse_QNAME = new QName("http://service.tf.cn/", "queryAreaResponse");
    private final static QName _QueryArea_QNAME = new QName("http://service.tf.cn/", "queryArea");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: cn.tf.service
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link QueryAreaResponse }
     * 
     */
    public QueryAreaResponse createQueryAreaResponse() {
        return new QueryAreaResponse();
    }

    /**
     * Create an instance of {@link QueryArea }
     * 
     */
    public QueryArea createQueryArea() {
        return new QueryArea();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link QueryAreaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.tf.cn/", name = "queryAreaResponse")
    public JAXBElement<QueryAreaResponse> createQueryAreaResponse(QueryAreaResponse value) {
        return new JAXBElement<QueryAreaResponse>(_QueryAreaResponse_QNAME, QueryAreaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link QueryArea }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.tf.cn/", name = "queryArea")
    public JAXBElement<QueryArea> createQueryArea(QueryArea value) {
        return new JAXBElement<QueryArea>(_QueryArea_QNAME, QueryArea.class, null, value);
    }

}
