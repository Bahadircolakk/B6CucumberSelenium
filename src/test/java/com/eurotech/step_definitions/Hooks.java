package com.eurotech.step_definitions;

import com.eurotech.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

public class Hooks {


    @Before
    public void setup(){
        //   Driver.get().manage().window().maximize();  //optional
        Driver.get().manage().timeouts().implicitlyWait(Duration.ofSeconds(15));
    }

    @After
    public void tearDown(Scenario scenario){
        if(scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot) Driver.get()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png","screenshot");
        }
        Driver.closeDriver();
    }

    @Before("@db")
    public void setupDB(){
        System.out.println("This is coming from before DataBase");
        System.out.println("Connecting Database");
    }

    @After("@db")
    public void tearDownDB(){
        System.out.println("This is coming from after DB");
        System.out.println("Disconnecting Database");
    }

}