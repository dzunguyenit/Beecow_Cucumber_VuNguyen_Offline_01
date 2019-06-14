package com.beecow.actions;

import org.openqa.selenium.WebDriver;

import com.beecow.ui.CommonPageUI;

import commons.CommonFunction;

public class CommonPage extends CommonFunction {

	public CommonPage(WebDriver driver) {
		super(driver);
	}

	public String getDynamicText(String value) {
		waitVisibleDynamicElement(CommonPageUI.DYNAMIC_MSG, value);
		return getTextDynamicElement(CommonPageUI.DYNAMIC_MSG, value);

	}

	public boolean isDynamicTexDisplayed(String value) {
		waitVisibleDynamicElement(CommonPageUI.DYNAMIC_MSG, value);
		return isDisplayed(CommonPageUI.DYNAMIC_MSG, value);

	}

	public boolean isDynamicTexDisplayedCategory(String categoryMsg) {
		categoryMsg = "Hãy chọn danh mục.";
		waitVisibleDynamicElement(CommonPageUI.DYNAMIC_MSG, categoryMsg);
		return isDisplayed(CommonPageUI.DYNAMIC_MSG, categoryMsg);

	}

	public boolean isDynamicTexDisplayedLBL(String value) {
		waitVisibleDynamicElement(CommonPageUI.DYNAMIC_LBL, value);
		return isDisplayed(CommonPageUI.DYNAMIC_LBL, value);

	}

	public void openDynamicPage(String dynamic) {
		waitVisibleDynamicElement(CommonPageUI.DYNAMIC_PAGES, dynamic);
		clickDynamicElement(CommonPageUI.DYNAMIC_PAGES, dynamic);
	}

}
