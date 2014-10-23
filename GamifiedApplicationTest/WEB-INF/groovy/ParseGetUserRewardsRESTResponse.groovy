#input String json
#output String[] rewardName, String[] userEmail, Integer[] rewardID, Double[] neededPoints


import com.fasterxml.jackson.core.JsonFactory
import com.fasterxml.jackson.core.JsonGenerationException
import com.fasterxml.jackson.core.JsonParser
import com.fasterxml.jackson.core.JsonToken
import com.fasterxml.jackson.databind.JsonMappingException
//import org.codehaus.jackson.JsonFactory;
//import org.codehaus.jackson.JsonGenerationException;
//import org.codehaus.jackson.JsonParser;
//import org.codehaus.jackson.JsonToken;
//import org.codehaus.jackson.map.JsonMappingException;
import java.io.InputStream
import java.io.ByteArrayInputStream
import com.webratio.rtx.core.BeanHelper
 

ArrayList rewardName = new ArrayList()
ArrayList userEmail = new ArrayList()
ArrayList rewardID = new ArrayList()
ArrayList neededPoints = new ArrayList()

JsonParser jParser = null
InputStream stream = null
 
try{

	JsonFactory jfactory = new JsonFactory();
	 
	stream = new ByteArrayInputStream(json.getBytes("UTF-8"));
	
	jParser = jfactory.createJsonParser(stream);
		while (jParser.nextToken() != JsonToken.END_ARRAY) {
	        
			String fieldname = jParser.getCurrentName();
			switch(fieldname) {
				case "rewardName":
					jParser.nextToken()
					rewardName.add(jParser.getText())	
			        break
				case "userEmail":
					jParser.nextToken()
					userEmail.add(jParser.getText())	
			        break
				case "rewardID":
					jParser.nextToken()
					rewardID.add(jParser.getIntValue())	
			        break		
				case "neededPoints":
					jParser.nextToken()
					neededPoints.add(jParser.getDoubleValue())	
			        break				        	        			        		        		        		        		        		        		        
			}
	
		 }
} catch(Exception e){
	 e.printStackTrace()
} finally {
	if(!BeanHelper.isNullOrEmptyString(jParser)){
		jParser.close();
    }
    if(!BeanHelper.isNullOrEmptyString(stream)){
    	stream.close();
    }	
}	  

return ["neededPoints": neededPoints, "rewardName": rewardName, "userEmail": userEmail, "rewardID": rewardID]