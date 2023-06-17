---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Device();
$requestBody->setAccountEnabled(false);

$alternativeSecurityIdsAlternativeSecurityId1 = new AlternativeSecurityId();
$alternativeSecurityIdsAlternativeSecurityId1->setType(2);

$alternativeSecurityIdsAlternativeSecurityId1->setKey(base64_decode('base64Y3YxN2E1MWFlYw=='));


$alternativeSecurityIdsArray []= $alternativeSecurityIdsAlternativeSecurityId1;
$requestBody->setAlternativeSecurityIds($alternativeSecurityIdsArray);


$requestBody->setDeviceId('4c299165-6e8f-4b45-a5ba-c5d250a707ff');

$requestBody->setDisplayName('Test device');

$requestBody->setOperatingSystem('linux');

$requestBody->setOperatingSystemVersion('1');



$result = $graphServiceClient->devices()->post($requestBody);


```