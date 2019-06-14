@CreatProduct 
Feature: CreatProduct 
	As an automation tester
  I want to creat product and edit all filed produc 
  So that I want to verify all fields is correct message

Background: User creat product 
	Given Navigate to Upload Product Page 
	And close popup advertisement 
	
@TC_008_VerifyCurrentUrl 
Scenario: TC_008_Verify Current Url 
	Then Verify current url "https://www.beecow.com/page/upload-product" 
	
@TC_009-030_UploadInvalidProduct 
Scenario Outline: 
	TC_011_Upload fields Image Succefully And Input Random Product Name 
	When I Input "<Image>" and "<ProductName>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>" 
	And I click button Post 
	Then Verify successfully all message "<UploadImageMsg>" and "<ProductNameMsg>" and "<DescriptionMsg>" and "<QuantityMsg>" and "<PriceMsg>" and "<WeightMsg>" and "<WidthMsg>" and "<LengthMsg>" and "<HeightMsg>" 
	
	Examples: 
		| Image		  | ProductName | Decription | Quantity | Price  | Weight | Width | Length | Height | UploadImageMsg                |ProductNameMsg        |DescriptionMsg       | QuantityMsg    | PriceMsg      |     WeightMsg               | 	WidthMsg	  | 	LengthMsg	| 	HeightMsg		| 
		|             |             |            |          |        |        |       |        |        |Hãy chọn hình ảnh cho sản phẩm |Hãy điền tên sản phẩm |  					 | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | 	 Bắt buộc  	  | 	Bắt buộc 	| 	Bắt buộc 		|
		|2019259.jpg  |             |            |          |        |        |       |        |        |								|Hãy điền tên sản phẩm | 			   		 | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | 	 Bắt buộc     | 	Bắt buộc 	| 	Bắt buộc 		|
		|2019259.jpg  |  XuanHoang  |            |          |        |        |       |        |        |								|					   |				     | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | 	 Bắt buộc 	  |	 	Bắt buộc 	| 	Bắt buộc		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |          |        |        |       |        |        |								|					   |                     | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | 	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |        |        |       |        |        |								|					   |                     |                | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | 	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    |        |       |        |        |								|					   |                     |                | 			  | Hãy điền cân nặng sản phẩm. | 	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    |   49   |       |        |        |								|					   |                     |                | 			  | Cân nặng từ 50g đến 10000g. |  	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10001  |       |        |        |								|					   |                     |                | 			  | Cân nặng từ 50g đến 10000g. |  	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    |   50   |       |        |        |								|					   |                     |                | 			  |                             | 	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |       |        |        |								|					   |                     |                | 			  |                             | 	 Bắt buộc	  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   0   |        |        |								|					   |                     |                | 			  |                             | Từ 1cm tới 50cm |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   51  |        |        |								|					   |                     |                | 			  |                             | Từ 1cm tới 50cm |  	Bắt buộc	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   1   |        |        |								|					   |                     |                | 			  |                             | 				  |  	Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |        |        |								|					   |                     |                | 			  |                             | 				  |		Bắt buộc 	| 	Bắt buộc  		|
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |   0    |        |								|					   |                     |                | 			  |                             | 				  | Từ 1cm tới 30cm | 	Bắt buộc  	    |
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |   31   |        |								|					   |                     |                | 			  |                             | 				  | Từ 1cm tới 30cm | 	Bắt buộc  	    |
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |   1    |        |								|					   |                     |                | 			  |                             | 				  | 			    | 	Bắt buộc 	    |
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |   30   |        |								|					   |                     |                | 			  |                             | 				  |                 | 	Bắt buộc 	    |
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |   30   |   0    |								|					   |                     |                | 			  |                             | 				  |                 | Từ 1cm tới 50cm   |
		|2019259.jpg  |  XuanHoang  |  Mô tả     |   10     |   8    | 10000  |   50  |   30   |   51   |								|					   |                     |                | 			  |                             | 				  |                 | Từ 1cm tới 50cm   |
		
		
#				@TC_015_PostWithInputValidFieldToQuantity 
#				Scenario Outline: 
#					TC_015_Upload fields Image Succefully and Input Random Product Name and RandomCombobox 
#					When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>" 
#					And I Select random combobox Chọn danh mục so 1 
#					And I Select random combobox Chọn danh mục thu 2 
#					And I click button Post 
#					Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>" 
#		#			
		#			Examples: 
		#				| Upload image | Product name | Decription          | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
		#				| 2019259.jpg  | XuanHoang    | Description product |       10 |       |        |       |        |        |          |          | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |
