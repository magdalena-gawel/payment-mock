package no.spid.payment.mock.paymentmock.mockedresponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

/**
 * TO BE deleted :(
 */
@Converter
public class ResponseContentConverter implements AttributeConverter<String, String> {

    @Override
    public String convertToDatabaseColumn(String color) {
        return color;
    }

    @Override
    public String convertToEntityAttribute(String colorString) {
        JsonParser parser = new JsonParser();
        JsonElement element = parser.parse(colorString);
        if (element.isJsonArray()) {
            JsonArray o = parser.parse(colorString).getAsJsonArray();
            return o.toString();
        }
        if (element.isJsonObject()) {
            JsonObject o = parser.parse(colorString).getAsJsonObject();
            return o.toString();
        }
        return "error";
//        throw exception instead
    }

}