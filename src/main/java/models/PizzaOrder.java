package models;

public class PizzaOrder {
    private String crust;
    private String sauce;
    private String size;
    private String[] toppings;
    private String address;

    public PizzaOrder() {
    }

    public PizzaOrder(String crust, String sauce, String size, String[] toppings, String address) {
        this.crust = crust;
        this.sauce = sauce;
        this.size = size;
        this.toppings = toppings;
        this.address = address;
    }

    public String getCrust() {
        return crust;
    }

    public void setCrust(String crust) {
        this.crust = crust;
    }

    public String getSauce() {
        return sauce;
    }

    public void setSauce(String sauce) {
        this.sauce = sauce;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String[] getToppings() {
        return toppings;
    }

    public void setToppings(String[] toppings) {
        this.toppings = toppings;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
