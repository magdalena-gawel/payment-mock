USE `paymockdb`;

INSERT INTO `mocked_response` VALUES
(4,'order_100207931_create','{
  "id" : 100207931,
  "purchaseFlow" : "SALE",
  "description" : "Test paylink 1",
  "fromUserId" : "12",
  "fromPaymentProviderInfo" : [ {
    "ppaProvider" : "PAYEX_CC",
    "storedPaymentMethodId" : 2711,
    "parameters" : { }
  } ],
  "fromUserIp" : "172.10.0.25",
  "toUserId" : null,
  "toPaymentProviderInfo" : [ ],
  "clientId" : "4e8465d59caf7c150d000001",
  "merchantId" : 46001,
  "clientReference" : null,
  "transactionReference" : "58b4beb1-541f-4c42-a099-dd2c0b2f3c175",
  "fromPaymentMethodUrl" : null,
  "paymentId" : null,
  "status" : "NEW",
  "currency" : "NOK",
  "redirectUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?order_id=100207931&return_from=PayEx",
  "cancelUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?abort_from=PayEx",
  "errorMessage" : null,
  "errorCode" : null,
  "orderItems" : [ {
    "id" : 814792,
    "quantity" : 1,
    "type" : "DEFAULT",
    "description" : "First item description",
    "price" : 50000,
    "vat" : 2500,
    "vatAmount" : 10000,
    "name" : "Name1",
    "itemReference" : null,
    "creditedAmount" : 0,
    "creditedVatAmount" : 0,
    "capturedAmount" : 0,
    "capturedVatAmount" : 0,
    "assetId" : null
  } ],
  "additionalInfo" : {
    "paylinkId" : "1",
    "type" : "PURCHASE",
    "userFlow" : "STORED_METHOD"
  },
  "created" : "2017-07-25T13:41:05Z",
  "updated" : "2017-07-25T13:41:05Z",
  "lastAction" : null,
  "callbackContext" : {
    "endpoints" : [ {
      "url" : "http://spp.dev/checkout/callback"
    } ]
  },
  "totalPrice" : 50000,
  "totalVat" : 10000,
  "totalCreditedAmount" : 0,
  "totalCreditedVatAmount" : 0,
  "totalCapturedAmount" : 0,
  "totalCapturedVatAmount" : 0
}'),
(5,'order_100207931_initialize','{
  "id" : 100207931,
  "purchaseFlow" : "SALE",
  "description" : "Test paylink 1",
  "fromUserId" : "12",
  "fromPaymentProviderInfo" : [ {
    "ppaProvider" : "PAYEX_CC",
    "storedPaymentMethodId" : 2711,
    "parameters" : { }
  } ],
  "fromUserIp" : "172.10.0.25",
  "toUserId" : null,
  "toPaymentProviderInfo" : [ ],
  "clientId" : "4e8465d59caf7c150d000001",
  "merchantId" : 46001,
  "clientReference" : null,
  "transactionReference" : "58b4beb1-541f-4c42-a099-dd2c0b2f3c175",
  "fromPaymentMethodUrl" : null,
  "paymentId" : 100207931,
  "status" : "INITIALIZED",
  "currency" : "NOK",
  "redirectUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?order_id=100207931&return_from=PayEx",
  "cancelUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?abort_from=PayEx",
  "errorMessage" : null,
  "errorCode" : null,
  "orderItems" : [ {
    "id" : 814792,
    "quantity" : 1,
    "type" : "DEFAULT",
    "description" : "First item description",
    "price" : 50000,
    "vat" : 2500,
    "vatAmount" : 10000,
    "name" : "Name1",
    "itemReference" : null,
    "creditedAmount" : 0,
    "creditedVatAmount" : 0,
    "capturedAmount" : 0,
    "capturedVatAmount" : 0,
    "assetId" : null
  } ],
  "additionalInfo" : {
    "paylinkId" : "1",
    "type" : "PURCHASE",
    "userFlow" : "STORED_METHOD"
  },
  "created" : "2017-07-25T13:41:06Z",
  "updated" : "2017-07-25T13:42:51Z",
  "lastAction" : {
    "type" : "INITIALIZE",
    "context" : { },
    "result" : "SUCCESS",
    "errorCode" : 0,
    "errorMessage" : null,
    "errorContext" : { }
  },
  "callbackContext" : {
    "endpoints" : [ {
      "url" : "http://spp.dev/checkout/callback"
    } ]
  },
  "totalPrice" : 50000,
  "totalVat" : 10000,
  "totalCreditedAmount" : 0,
  "totalCreditedVatAmount" : 0,
  "totalCapturedAmount" : 0,
  "totalCapturedVatAmount" : 0
}'),
(6,'order_100207931_complete','{
  "id" : 100207931,
  "purchaseFlow" : "SALE",
  "description" : "Test paylink 1",
  "fromUserId" : "12",
  "fromPaymentProviderInfo" : [ {
    "ppaProvider" : "PAYEX_CC",
    "storedPaymentMethodId" : 2711,
    "parameters" : { }
  } ],
  "fromUserIp" : "172.10.0.25",
  "toUserId" : null,
  "toPaymentProviderInfo" : [ ],
  "clientId" : "4e8465d59caf7c150d000001",
  "merchantId" : 46001,
  "clientReference" : null,
  "transactionReference" : "58b4beb1-541f-4c42-a099-dd2c0b2f3c175",
  "fromPaymentMethodUrl" : null,
  "paymentId" : 100207931,
  "status" : "COMPLETED",
  "currency" : "NOK",
  "redirectUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?order_id=100207931&return_from=PayEx",
  "cancelUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?abort_from=PayEx",
  "errorMessage" : null,
  "errorCode" : null,
  "orderItems" : [ {
    "id" : 814792,
    "quantity" : 1,
    "type" : "DEFAULT",
    "description" : "First item description",
    "price" : 50000,
    "vat" : 2500,
    "vatAmount" : 10000,
    "name" : "Name1",
    "itemReference" : null,
    "creditedAmount" : 0,
    "creditedVatAmount" : 0,
    "capturedAmount" : 50000,
    "capturedVatAmount" : 10000,
    "assetId" : null
  } ],
  "additionalInfo" : {
    "paylinkId" : "1",
    "type" : "PURCHASE",
    "userFlow" : "STORED_METHOD"
  },
  "created" : "2017-07-25T13:41:06Z",
  "updated" : "2017-07-25T13:43:14Z",
  "lastAction" : {
    "type" : "COMPLETE",
    "context" : { },
    "result" : "SUCCESS",
    "errorCode" : 0,
    "errorMessage" : null,
    "errorContext" : { }
  },
  "callbackContext" : {
    "endpoints" : [ {
      "url" : "http://spp.dev/checkout/callback"
    } ]
  },
  "totalPrice" : 50000,
  "totalVat" : 10000,
  "totalCreditedAmount" : 0,
  "totalCreditedVatAmount" : 0,
  "totalCapturedAmount" : 50000,
  "totalCapturedVatAmount" : 10000
}'),
(7,'order_100207931_get','{
  "id" : 100207931,
  "purchaseFlow" : "SALE",
  "description" : "Test paylink 1",
  "fromUserId" : "12",
  "fromPaymentProviderInfo" : [ {
    "ppaProvider" : "PAYEX_CC",
    "storedPaymentMethodId" : 2711,
    "parameters" : { }
  } ],
  "fromUserIp" : "172.10.0.25",
  "toUserId" : null,
  "toPaymentProviderInfo" : [ ],
  "clientId" : "4e8465d59caf7c150d000001",
  "merchantId" : 46001,
  "clientReference" : null,
  "transactionReference" : "58b4beb1-541f-4c42-a099-dd2c0b2f3c175",
  "fromPaymentMethodUrl" : null,
  "paymentId" : 100207931,
  "status" : "COMPLETED",
  "currency" : "NOK",
  "redirectUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?order_id=100207931&return_from=PayEx",
  "cancelUrl" : "http://spp.dev/flow/checkout/5977437bbbea2?abort_from=PayEx",
  "errorMessage" : null,
  "errorCode" : null,
  "orderItems" : [ {
    "id" : 814792,
    "quantity" : 1,
    "type" : "DEFAULT",
    "description" : "First item description",
    "price" : 50000,
    "vat" : 2500,
    "vatAmount" : 10000,
    "name" : "Name1",
    "itemReference" : null,
    "creditedAmount" : 0,
    "creditedVatAmount" : 0,
    "capturedAmount" : 50000,
    "capturedVatAmount" : 10000,
    "assetId" : null
  } ],
  "additionalInfo" : {
    "paylinkId" : "1",
    "type" : "PURCHASE",
    "userFlow" : "STORED_METHOD"
  },
  "created" : "2017-07-25T13:41:06Z",
  "updated" : "2017-07-25T13:43:15Z",
  "lastAction" : {
    "type" : "COMPLETE",
    "context" : { },
    "result" : "SUCCESS",
    "errorCode" : 0,
    "errorMessage" : null,
    "errorContext" : { }
  },
  "callbackContext" : {
    "endpoints" : [ {
      "url" : "http://spp.dev/checkout/callback"
    } ]
  },
  "totalPrice" : 50000,
  "totalVat" : 10000,
  "totalCreditedAmount" : 0,
  "totalCreditedVatAmount" : 0,
  "totalCapturedAmount" : 50000,
  "totalCapturedVatAmount" : 10000
}')
;
