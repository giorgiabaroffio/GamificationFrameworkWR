#input String json
#output String userEmail, Double creditAvailable


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
 

def userEmail
def creditAvailable


JsonParser jParser = null
InputStream stream = null
 
try{

	JsonFactory jfactory = new JsonFactory();
	 
	stream = new ByteArrayInputStream(json.getBytes("UTF-8"));
	
	jParser = jfactory.createJsonParser(stream);
		while (jParser.nextToken() != JsonToken.END_OBJECT) {
	        
			String fieldname = jParser.getCurrentName();
			switch(fieldname) {
				case "userEmail":
					jParser.nextToken()
					userEmail = jParser.getText()	
			        break
				case "availablePoints":
					jParser.nextToken()
					creditAvailable = jParser.getDoubleValue()
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

return ["creditAvailable": creditAvailable, "userEmail": userEmail]