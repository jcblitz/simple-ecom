/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package net.blitzstein.ecommerce.domain;

import java.util.List;

/**
 *
 * @author jared
 */
public class Category {
    private Integer id;
    private String name;
    private String shortDescription;
    List<Product> products;
    List<Category> categories;
}
