package com.beecow.actions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.ui.HomePageUI;

import commons.CommonFunction;

public class HomePage extends CommonFunction {

	public HomePage(WebDriver driver) {
		super(driver);
	}

	public LoginPage clickdangnhap() {
		waitVisible(HomePageUI.DANGNHAP_TXT);
		click(HomePageUI.DANGNHAP_TXT);
		return PageFactory.initElements(driver, LoginPage.class);
	}

	public LoginPage openBeecow(String url) {
		openUrl(url);
		return PageFactory.initElements(driver, LoginPage.class);
	}

	public CreateProductPage clickSellerPage() {
		waitVisible(HomePageUI.SELLER_LINK);
		clickByJs(HomePageUI.SELLER_LINK);
		return PageFactory.initElements(driver, CreateProductPage.class);
	}

}