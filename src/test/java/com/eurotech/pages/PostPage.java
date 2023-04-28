package com.eurotech.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class PostPage extends BasePage{

    @FindBy(css = "#post-form-btn")
    public WebElement submitButton;

    @FindBy(id = "post-form-title")
    public WebElement titleInput;

    @FindBy(id = "post-form-textarea")
    public WebElement postInput;

    @FindBy(xpath = "//*[contains(text(),'Created')]")
    public WebElement postCreatedMessage;


    public void postComment() {

        String title = "POM";
        String post = "According to the Page Object ...";

        titleInput.sendKeys(title);
        postInput.sendKeys(post);
        submitButton.click();
    }

    public void post2(String title, String post) {
        titleInput.sendKeys(title);
        postInput.sendKeys(post);
        submitButton.click();
    }
}
