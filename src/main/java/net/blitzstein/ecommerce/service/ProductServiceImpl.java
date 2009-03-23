/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.blitzstein.ecommerce.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import net.blitzstein.ecommerce.domain.Product;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

/**
 *
 * @author jared
 */
@Service
public class ProductServiceImpl implements ProductService, ApplicationContextAware {

    @Autowired
    private ApplicationContext applicationContext;

    public void setApplicationContext(ApplicationContext context) throws BeansException {
        this.applicationContext = context;
    }

    public List<Product> getProducts() {
        List products = new ArrayList();

        Map productMap = applicationContext.getBeansOfType(Product.class);
        products = new ArrayList(productMap.values());

        return products;
    }

    public List<Product> getProductsBySlug(String slug) {
        List slugMapping = new ArrayList();

        Map productMap = applicationContext.getBeansOfType(Product.class);
        List<Product> products = new ArrayList(productMap.values());

        for (Product product : products) {
            if (product.getTitleSlug().equalsIgnoreCase(slug)) {
                slugMapping.add(product);
            }

        }

        return slugMapping;


    }
}
