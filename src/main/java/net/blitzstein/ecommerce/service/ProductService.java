/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package net.blitzstein.ecommerce.service;

import java.util.List;
import net.blitzstein.ecommerce.domain.Product;

/**
 *
 * @author jared
 */
public interface ProductService {
    public List<Product> getProducts();
    public List<Product> getProductsBySlug(String slug);

}
