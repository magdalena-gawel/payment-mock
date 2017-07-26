package no.spid.payment.mock.paymentmock;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.awt.Color;

        import javax.persistence.AttributeConverter;
        import javax.persistence.Converter;

@Converter
public class ContentConverter implements AttributeConverter<String, String> {

    private static final String SEPARATOR = "|";

    /**
     * Convert Color object to a String
     * with format red|green|blue|alpha
     */
    @Override
    public String convertToDatabaseColumn(String color) {
        return color;
    }

    /**
     * Convert a String with format red|green|blue|alpha
     * to a Color object
     */
    @Override
    public String convertToEntityAttribute(String colorString) {
        JsonParser parser = new JsonParser();
        JsonArray o = parser.parse(colorString).getAsJsonArray();
        return o.toString();
    }

}