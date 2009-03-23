/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package net.blitzstein.ecommerce.web;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.blitzstein.ecommerce.domain.Product;
import net.blitzstein.ecommerce.service.ProductService;
import net.blitzstein.ecommerce.service.ProductServiceImpl;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author jared
 */
public class HomeController implements Controller {
    private Log log = LogFactory.getLog(HomeController.class);

    private ProductService productService;

    public void setProductService(ProductServiceImpl productService) {
        this.productService = productService;
    }
    
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse arg1) throws Exception {
        log.debug("Started Home Controller");
        ModelAndView view = new ModelAndView();

        String viewType = ServletRequestUtils.getStringParameter(request, "type", "home");
        view.setViewName(getDisplayViewFactory(viewType));

        view.addObject("productDisplayModule",  loadProductDisplayModule());

        return view;
    }

    private String getDisplayViewFactory(String displayType) {
        if (displayType.equals("home")) {
            return "home";
        } else if (displayType.equals("special")) {
            return "spec";
        } else {
            return "default";
        }
    }

    private List<Product> loadProductDisplayModule() {
        return productService.getProducts();
    }

}
