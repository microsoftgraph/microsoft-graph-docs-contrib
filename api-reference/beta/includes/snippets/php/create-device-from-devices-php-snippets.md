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
$alternativeSecurityIdsAlternativeSecurityId1->setType(99);

$alternativeSecurityIdsAlternativeSecurityId1->setIdentityProvider('identityProvider-value');

$alternativeSecurityIdsAlternativeSecurityId1->setKey(base64_decode('base64Y3YxN2E1MWFlYw=='));


$alternativeSecurityIdsArray []= $alternativeSecurityIdsAlternativeSecurityId1;
$requestBody->setAlternativeSecurityIds($alternativeSecurityIdsArray);


$requestBody->setApproximateLastSignInDateTime(new DateTime('2016-10-19T10:37:00Z'));

$requestBody->setDeviceId('deviceId-value');

$requestBody->setDeviceMetadata('deviceMetadata-value');

$requestBody->setDeviceVersion(99);



$result = $graphServiceClient->devices()->post($requestBody);


```