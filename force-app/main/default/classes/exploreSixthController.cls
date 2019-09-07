public class exploreSixthController {
    
    public String name {set; get;}    	
    public String location {set; get;} 
    public PageReference getText(){
        
        name = 'krishnateja';
        location = 'hyderabad';
        return new PageReference('/apex/exploreFifthPage?name='+ name+'&location='+location);
    }

}