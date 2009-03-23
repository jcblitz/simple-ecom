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
public class Product {

    private Integer id;
    private String title;
    private String shortDescription;
    private String longDescription;
    private String manufacturer;
    private Float price;
    private List<Category> categories;
    private String thumbnail;

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public Product(Integer id, String title, String shortDescription, Float price) {
        this.id = id;
        this.title = title;
        this.shortDescription = shortDescription;
        this.price = price;
    }

    public Product() {
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLongDescription() {
        return longDescription;
    }

    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getTitle() {
        return title;
    }

    public String getTitleSlug() {
        return getTitle().replaceAll("\\s", "-").toLowerCase();

    }

    public void setTitle(String title) {
        this.title = title;
    }
}
