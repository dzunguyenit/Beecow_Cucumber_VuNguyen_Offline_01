package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;

public class HomePageSteps extends CommonTestCase {

	WebDriver driver;
	LoginPage loginPage;
	HomePage homePage;
	CreateProductPage createProductPage;

	public HomePageSteps() {
		driver = CommonTestCase.openBrowser();
		homePage = PageFactory.initElements(driver, HomePage.class);

	}

	@Given("^I navigate to Beecow and click button Login$")
	public void i_navigate_to_Beecow_and_click_button_Login() {
		loginPage = homePage.clickdangnhap();
	}

	
}