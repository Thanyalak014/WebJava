package bookshop;
// Generated Oct 29, 2016 7:28:58 PM by Hibernate Tools 4.3.1



/**
 * Publishers generated by hbm2java
 */
public class Publishers  implements java.io.Serializable {


     private String publisherId;
     private String name;
     private String url;

    public Publishers() {
    }

	
    public Publishers(String publisherId) {
        this.publisherId = publisherId;
    }
    public Publishers(String publisherId, String name, String url) {
       this.publisherId = publisherId;
       this.name = name;
       this.url = url;
    }
   
    public String getPublisherId() {
        return this.publisherId;
    }
    
    public void setPublisherId(String publisherId) {
        this.publisherId = publisherId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }




}


