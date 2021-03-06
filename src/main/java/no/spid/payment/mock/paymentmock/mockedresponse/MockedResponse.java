package no.spid.payment.mock.paymentmock.mockedresponse;

import javax.persistence.*;

@Entity
public class MockedResponse {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String key;

    @Column
//    @Convert(converter = ResponseContentConverter.class)
    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}