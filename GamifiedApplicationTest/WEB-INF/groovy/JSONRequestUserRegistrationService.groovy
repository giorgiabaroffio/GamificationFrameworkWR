#input Date birthDate, String city, String country, String geoArea, String isoCode
#input Boolean internal, String lastName, String firstName, String username, String password
#input Boolean publicProfile, String userEmail, photo
#output String json

import com.fasterxml.jackson.core.JsonEncoding
import com.fasterxml.jackson.core.JsonFactory
import com.fasterxml.jackson.core.JsonGenerationException
import com.fasterxml.jackson.core.JsonGenerator
import com.fasterxml.jackson.databind.JsonMappingException
//import org.codehaus.jackson.JsonEncoding
//import org.codehaus.jackson.JsonFactory
//import org.codehaus.jackson.JsonGenerationException
//import org.codehaus.jackson.JsonGenerator
//import org.codehaus.jackson.map.JsonMappingException
import java.io.OutputStream
import java.io.ByteArrayOutputStream
import org.apache.commons.io.IOUtils
import com.webratio.rtx.blob.BLOBData
import sun.misc.BASE64Encoder
import com.webratio.rtx.blob.UploadedBLOBData
import com.webratio.rtx.core.BeanHelper

def json = null

  Object avatar = photo
  Object avatarName = null
  
  try{
    if (avatar != null){
      if (avatar instanceof UploadedBLOBData) {
	      UploadedBLOBData img = (UploadedBLOBData)avatar
	      avatarName = img.getName()
	      byte[] by = new byte[img.getLength()]
	      img.openFileInputStream().read(by)
	      BASE64Encoder be = new BASE64Encoder()
	      avatar = be.encode(by)
	   } else if (avatar instanceof BLOBData) {
	      BLOBData img = (BLOBData)avatar
          avatarName = img.getName()
	      byte[] by = new byte[img.getLength()]
	      img.openFileInputStream().read(by)
	      BASE64Encoder be = new BASE64Encoder()
	      avatar = be.encode(by)
	   } else {
	     avatar = null
         avatarName = null
	   }
    } else {
      avatar = null
      avatarName = null
    }
  }catch(Exception e){
    e.printStackTrace()
  }

try {

    OutputStream out = new ByteArrayOutputStream()
    
    JsonFactory jfactory = new JsonFactory();

   
    JsonGenerator jGenerator = jfactory.createJsonGenerator(out, JsonEncoding.UTF8);
  //  jGenerator.writeStartObject(); // {

  //  jGenerator.writeFieldName("actions");
    jGenerator.writeStartArray(); 
	//action.eachWithIndex{obj, idx ->
	    jGenerator.writeStartObject(); 
	    if(!BeanHelper.isNullOrEmptyString(birthDate)){
	    	jGenerator.writeNumberField("birthdate", birthDate.getTime());  
	    }
	    jGenerator.writeStringField("username", username); 
	    if(!BeanHelper.isNullOrEmptyString(password)){
	    	jGenerator.writeStringField("password", password);
	    }
	    jGenerator.writeStringField("email", userEmail);
	    jGenerator.writeStringField("firstname", firstName); 
        jGenerator.writeStringField("lastname", lastName); 
        jGenerator.writeStringField("city", city); 
        jGenerator.writeStringField("country", country); 
        if(!BeanHelper.isNullOrEmptyString(avatar)){
        	jGenerator.writeStringField("photocode", avatar); 
        }
        if(!BeanHelper.isNullOrEmptyString(avatarName)){
 			jGenerator.writeStringField("photoname", avatarName);
 		}
 		jGenerator.writeBooleanField("publicprofile", publicProfile);
 		jGenerator.writeBooleanField("internal", internal);
 		jGenerator.writeStringField("isocode", isoCode);
 		jGenerator.writeStringField("geoarea", geoArea);
	    jGenerator.writeEndObject(); 
	//}
	
	 jGenerator.writeEndArray();
	//jGenerator.writeEndObject();

    jGenerator.close();
    
    json = out.toString()

} catch (JsonGenerationException e) {

    e.printStackTrace();

} catch (JsonMappingException e) {

    e.printStackTrace();

} catch (IOException e) {

    e.printStackTrace();

}

//println json

return ["json": json]