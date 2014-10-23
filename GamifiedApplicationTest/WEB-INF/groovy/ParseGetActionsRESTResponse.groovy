#input String json
#output String[] gamifiedApplication, String[] actionName, Integer[] actionID


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
 

ArrayList gamifiedApplication = new ArrayList()
ArrayList actionName = new ArrayList()
ArrayList actionID = new ArrayList()


JsonParser jParser = null
InputStream stream = null
 
try{

	JsonFactory jfactory = new JsonFactory();
	 
	stream = new ByteArrayInputStream(json.getBytes("UTF-8"));
	
	jParser = jfactory.createJsonParser(stream);
		while (jParser.nextToken() != JsonToken.END_ARRAY) {
	        
			String fieldname = jParser.getCurrentName();
			switch(fieldname) {
				case "gamifiedApplication":
					jParser.nextToken()
					gamifiedApplication.add(jParser.getText())	
			        break
				case "actionName":
					jParser.nextToken()
					actionName.add(jParser.getText())	
			        break
				case "actionID":
					jParser.nextToken()
					actionID.add(jParser.getIntValue())	
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

return ["gamifiedApplication": gamifiedApplication, "actionID": actionID, "actionName": actionName]