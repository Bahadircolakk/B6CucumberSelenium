package com.eurotech.pages;

import com.eurotech.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class DashboardPage extends BasePage {

    @FindBy(css = "#dashboard-p1")
    public WebElement welcomeMessage;

    @FindBy(css = ".nav__menu-item")
    public List<WebElement> menuList;

    @FindBy(linkText = "All Posts")
    public WebElement allPosts;

    @FindBy(linkText = "Developers")
    public WebElement developers;

    @FindBy(linkText = "My Account")
    public WebElement myAccount;

    @FindBy(css = ".btn.btn-light")
    public List<WebElement> dashboardList;

    //@FindBy(xpath = "//tbody/tr[2]/td[2]") // not a good one as it would not work if the table changes
    @FindBy(xpath = "//*[text()='Apple']/../td[2]")
    public WebElement jobTitle;


    public void navigateMenu(String menuName) {
        Driver.get().findElement(By.xpath("//*[text()='" + menuName + "']")).click();
    }

    public void navigateSubMenu(String menuName) {
        Driver.get().findElement(By.xpath("//span[text()='" + menuName + "']")).click();

    }

    public String getCurrentExperienceTitle() {
        //th[text()='Title']/../../../tbody/tr/td[2]
        //table/tbody/tr/td[2]
        String currentTitle = Driver.get().findElement(By.xpath("//table/tbody/tr/td[2]")).getText();
        return currentTitle;
    }

    public String getHeader(String name) {
        return Driver.get().findElement(By.xpath("//*[text()='" + name + "']")).getText();
    }


}
