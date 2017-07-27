USE `paymockdb`;

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
} ]')
;
