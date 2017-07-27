USE `paymockdb`;

INSERT INTO `mocked_response` VALUES
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
}')
;
