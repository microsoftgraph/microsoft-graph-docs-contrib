---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Device();
$requestBody->setAccountEnabled(true);

$alternativeSecurityIdsAlternativeSecurityId1 = new AlternativeSecurityId();
$additionalData = [
'type' => 99,
'identityProvider' => 'identityProvider-value', 
'key' => 'base64Y3YxN2E1MWFlYw==', 
];
$alternativeSecurityIdsAlternativeSecurityId1->setAdditionalData($additionalData);



$alternativeSecurityIdsArray []= $alternativeSecurityIdsAlternativeSecurityId1;
$requestBody->setAlternativeSecurityIds($alternativeSecurityIdsArray);


$requestBody->setApproximateLastSignInDateTime(new DateTime('2016-10-19T10:37:00Z'));

$requestBody->setDeviceId('deviceId-value');

$requestBody->setDeviceMetadata('deviceMetadata-value');

$requestBody->setDeviceVersion(99);



$requestResult = $graphServiceClient->devices()->post($requestBody);


```