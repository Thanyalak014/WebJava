package bookshop;

public class Categories  implements java.io.Serializable {


     private String categoryId;
     private String categoryName;

    public Categories() {
    }

	
    public Categories(String categoryId) {
        this.categoryId = categoryId;
    }
    public Categories(String categoryId, String categoryName) {
       this.categoryId = categoryId;
       this.categoryName = categoryName;
    }
   
    public String getCategoryId() {
        return this.categoryId;
    }
    
    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
    public String getCategoryName() {
        return this.categoryName;
    }
    
    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }




}


