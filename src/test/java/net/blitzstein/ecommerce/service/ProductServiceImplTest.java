/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.blitzstein.ecommerce.service;

import java.util.List;
import net.blitzstein.ecommerce.domain.Product;
import net.blitzstein.ecommerce.service.ProductServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import static org.junit.Assert.*;

/**
 *
 * @author jared
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/ecommerce-fixtures.xml", "/ecommerce-service.xml"})
public class ProductServiceImplTest implements ApplicationContextAware {

    private ProductServiceImpl productService;

    @Autowired
    public ApplicationContext context;

    @Test
    public void getProductTests() {
        List<Product> products = productService.getProducts();
        assertEquals(2, products.size());
    }

    @Test
    public void getProductBySlugTest() {
         List<Product> products = productService.getProducts();
         for (Product product : products) {

             System.out.println(product.getTitle() + " " + product.getTitleSlug());

        }
    }

    @Before
    public void setup() {
        productService = (ProductServiceImpl) context.getBean("productService", ProductServiceImpl.class);
    }

    public void setApplicationContext(ApplicationContext context) throws BeansException {
        this.context = context;
    }
}
