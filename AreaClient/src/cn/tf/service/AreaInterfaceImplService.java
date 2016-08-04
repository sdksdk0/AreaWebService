
package cn.tf.service;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "AreaInterfaceImplService", targetNamespace = "http://service.tf.cn/", wsdlLocation = "http://127.0.0.1:11111/area?wsdl")
public class AreaInterfaceImplService
    extends Service
{

    private final static URL AREAINTERFACEIMPLSERVICE_WSDL_LOCATION;
    private final static WebServiceException AREAINTERFACEIMPLSERVICE_EXCEPTION;
    private final static QName AREAINTERFACEIMPLSERVICE_QNAME = new QName("http://service.tf.cn/", "AreaInterfaceImplService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://127.0.0.1:11111/area?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        AREAINTERFACEIMPLSERVICE_WSDL_LOCATION = url;
        AREAINTERFACEIMPLSERVICE_EXCEPTION = e;
    }

    public AreaInterfaceImplService() {
        super(__getWsdlLocation(), AREAINTERFACEIMPLSERVICE_QNAME);
    }

    public AreaInterfaceImplService(WebServiceFeature... features) {
        super(__getWsdlLocation(), AREAINTERFACEIMPLSERVICE_QNAME, features);
    }

    public AreaInterfaceImplService(URL wsdlLocation) {
        super(wsdlLocation, AREAINTERFACEIMPLSERVICE_QNAME);
    }

    public AreaInterfaceImplService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, AREAINTERFACEIMPLSERVICE_QNAME, features);
    }

    public AreaInterfaceImplService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public AreaInterfaceImplService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns AreaInterfaceImpl
     */
    @WebEndpoint(name = "AreaInterfaceImplPort")
    public AreaInterfaceImpl getAreaInterfaceImplPort() {
        return super.getPort(new QName("http://service.tf.cn/", "AreaInterfaceImplPort"), AreaInterfaceImpl.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns AreaInterfaceImpl
     */
    @WebEndpoint(name = "AreaInterfaceImplPort")
    public AreaInterfaceImpl getAreaInterfaceImplPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://service.tf.cn/", "AreaInterfaceImplPort"), AreaInterfaceImpl.class, features);
    }

    private static URL __getWsdlLocation() {
        if (AREAINTERFACEIMPLSERVICE_EXCEPTION!= null) {
            throw AREAINTERFACEIMPLSERVICE_EXCEPTION;
        }
        return AREAINTERFACEIMPLSERVICE_WSDL_LOCATION;
    }

}
