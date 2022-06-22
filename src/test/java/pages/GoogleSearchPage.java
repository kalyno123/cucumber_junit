package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class GoogleSearchPage {

    public GoogleSearchPage(WebDriver driver){
        PageFactory.initElements(driver, this);
        //PageFactory.initElements(Driver.getDriver(), this); --> THIS IS ANOTHER WAY
    }

    @FindBy (name = "q")
    public WebElement searchInPutBox;

    @FindBy(id = "result-stats")
    public WebElement resultBar;

}
