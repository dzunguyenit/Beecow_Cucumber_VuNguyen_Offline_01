package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class LogInSteps extends CommonTestCase {

	WebDriver driver;
	LoginPage loginPage;
	HomePage homePage;
	CreateProductPage createProductPage;

	public LogInSteps() {
		driver = CommonTestCase.driver;
		homePage = PageFactory.initElements(driver, HomePage.class);
	}

	@Given("^I navigate to Beecow \"([^\"]*)\"$")
	public void i_navigate_to_Beecow(String url) {
		loginPage = homePage.openBeecow(url);
		homePage.clickdangnhap();
	}

	@When("^I input data \"([^\"]*)\" to username$")
	public void i_input_data_to_username(String value) {
		loginPage.inputEmailorSdt(value);
	}

	@When("^I input data \"([^\"]*)\" to password$")
	public void i_input_data_to_password(String value) {
		loginPage.iputMatkhau(value);
	}

	@When("^I click button Login$")
	public void i_click_button_Login() {
		loginPage.clickbuttonDangnhap();
	}

	@Given("^I enter correct email  to username$")
	public void i_enter_correct_email_to_username() {
		loginPage.inputEmailorSdt("genymotionios@gmail.com");
	}

	@When("^I enter correct password to password$")
	public void i_enter_correct_password_to_password() {
		loginPage.iputMatkhau("1234@abcd");
	}

//	@Then("^Verify current url \"([^\"]*)\"$")
//	public void verify_current_url(String url) {
//		loginPage.verifyCurrentUrlUploadProductPage(url);
//	}



	@Then("^At Home Page click seller page$")
	public void at_Home_Page_click_seller_page() throws InterruptedException {
		createProductPage = loginPage.clickSellerPage();
		Thread.sleep(3000);
	}
}