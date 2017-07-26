CREATE DATABASE IF NOT EXISTS `paymockdb`;
USE `paymockdb`;

DROP TABLE IF EXISTS `mocked_response`;
CREATE TABLE `mocked_response` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(256) DEFAULT NULL,
  `content` JSON DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `mocked_response` VALUES (
1,'user_12_methods_verified','[ {
  "id" : 1318,
  "userId" : "12",
  "description" : "SPiDCash wallet(844)",
  "status" : "VERIFIED",
  "type" : "WALLET",
  "details" : {
    "walletId" : 844
  },
  "created" : "2015-10-06T12:21:42Z",
  "updated" : "2015-10-06T12:21:42Z"
}, {
  "id" : 2710,
  "userId" : "12",
  "description" : "Enda en konto,12345678903,KAPELLVEIEN 26,KOLBOTN,1410,NO",
  "status" : "VERIFIED",
  "type" : "TELEPAY",
  "details" : {
    "country" : "NO",
    "bankAccNumber" : "12345678903",
    "creditorName" : "Enda en konto",
    "town" : "KOLBOTN",
    "postalCode" : "1410",
    "addressLine" : "KAPELLVEIEN 26"
  },
  "created" : "2015-10-07T13:30:02Z",
  "updated" : "2015-10-07T13:30:03Z"
}, {
  "id" : 2711,
  "userId" : "12",
  "description" : "************0004,12/18",
  "status" : "VERIFIED",
  "type" : "PAYEX_CC",
  "details" : {
    "expiryDate" : "2019-01-01",
    "panId" : "00000001-4925-0000-0004-000000000000",
    "maskedNumber" : "************0004",
    "3dSecure" : true,
    "paymentMethod" : "VISA",
    "internalMaskedNumber" : "49**********0004"
  },
  "created" : "2015-10-07T13:34:23Z",
  "updated" : "2017-06-23T12:25:11Z",
  "expirationDate" : "2019-01-01T00:00:00Z"
} ]'),
(2,'user_12_wallets','[{"id":844,"userId":"12","currency":"NOK","balance":64300,"authorizedFunds":0,"expectedFunds":0,"locked":false}]'),
(3, 'method_2711','{
  "id" : 2711,
  "userId" : "12",
  "description" : "************0004,12/18",
  "status" : "VERIFIED",
  "type" : "PAYEX_CC",
  "details" : {
    "expiryDate" : "2019-01-01",
    "panId" : "00000001-4925-0000-0004-000000000000",
    "maskedNumber" : "************0004",
    "3dSecure" : true,
    "paymentMethod" : "VISA",
    "internalMaskedNumber" : "49**********0004"
  },
  "created" : "2015-10-07T13:34:23Z",
  "updated" : "2017-06-23T12:25:11Z",
  "expirationDate" : "2019-01-01T00:00:00Z"
}'),
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
