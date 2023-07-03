class ApiURL{

  static BaseUrl="http://127.0.0.1:8000/api/"

  static VisitorDetails = this.BaseUrl+"GetVisitorDetails"
  static SendContactDetails = this.BaseUrl+"SendContactDetails"
  static SendSiteInfo = this.BaseUrl+"SendSiteInfo"
  static SendCategoryDetails = this.BaseUrl+"SendCategoryDetails"

  static ProductListByRemark(Remark){
    return this.BaseUrl+"ProductListByRemark/"+Remark;
  }
  static ProductListByCategory(Category){
    return this.BaseUrl+"ProductListByCategory/"+Category;
  }

  static ProductListBySubCategory(Category, SubCategory){
    return this.BaseUrl+"ProductListBySubCategory/"+Category+"/"+SubCategory;
  }

  static SendSliderInfo=this.BaseUrl+"SendSliderInfo";

  static ProductDetails(ProductCode){
    //alert(ProductCode)

    return this.BaseUrl+"ProductDetails/"+ProductCode;
  }

  static NotificationHistory = this.BaseUrl+"NotificationHistory"

  static ProductListBySearch(SearchKey){
    return this.BaseUrl+"ProductBySearch/"+SearchKey;
  }
  static SimilarProduct(subcategory){
    return this.BaseUrl+"SimilarProduct/"+subcategory;
  }

  static ReviewList(code){
    return this.BaseUrl+"reviewList/"+code;
  }
  static CartCount(email){
    return this.BaseUrl+"CartCount/"+email;
  }

  static AddFav(email,code){
    return this.BaseUrl+"addFav/"+code+"/"+email;
  }
  static favList(email){
    return this.BaseUrl+"favList/"+email;
  }
  static favList1(email){
    return this.BaseUrl+"favList1/"+email;
  }
  static removeFavItem(email,code){
    return this.BaseUrl+"removeFavItem/"+code+"/"+email;
  }

  static addToCart=this.BaseUrl+"addToCart"

  static CartList(email){
    return this.BaseUrl+"CartList/"+email;
  }
  static RemoveCartList(id){
    return this.BaseUrl+"RemoveCartList/"+id;
  }

  static CartItemPlus(id,quantity,price){
    return this.BaseUrl+"CartItemPlus/"+id+"/"+quantity+"/"+price;
  }

  static CartItemMinus(id,quantity,price){
    return this.BaseUrl+"CartItemMinus/"+id+"/"+quantity+"/"+price;
  }

  
  static CartOrder = this.BaseUrl+"CartOrder"
  static online_payment = this.BaseUrl+"payment"
  static postReview = this.BaseUrl+"postReview"



  static OrderListByUser(email){
    return this.BaseUrl+"OrderListByUser/"+email;
  }

}



export default ApiURL;