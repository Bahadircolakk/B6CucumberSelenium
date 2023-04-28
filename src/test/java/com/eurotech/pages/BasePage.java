package com.eurotech.pages;

import com.eurotech.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public abstract class BasePage {

    // Page Object Model --> Design pattern in selenium
    // Page Factory --> is class in Selenium using which we can create page object model.

    public BasePage() {
        PageFactory.initElements(Driver.get(), this); // It allows to reach web elements and methods in this class
    }

    @FindBy(xpath = "//span[text()='Sign in with Google']")
    public WebElement signWithGoogle;

}
