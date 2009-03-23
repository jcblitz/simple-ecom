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
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author jared
 */
public class ProductController implements Controller {
    private Log log = LogFactory.getLog(ProductController.class);
    private ProductService productService;

    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse arg1) throws Exception {
        log.debug("Handling product controller");
        ModelAndView view = new ModelAndView("product");

        String slug = ServletRequestUtils.getStringParameter(request, "slug", null);
        view.addObject("product", loadProductForDisplay(slug));

        return view;
    }



    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    private Object loadProductForDisplay(String slug) {
        List<Product> products = productService.getProductsBySlug(slug);

        if (products.size() == 1) {
            return products.get(0);
        } else if (products.size() > 1) {
            return products;
        } else {
            return null;
        }
    }

}
