---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Device();
$additionalData = [
'extensionAttributes' => $requestBody = new ();
$		requestBody->setExtensionAttribute1('BYOD-Device');


$requestBody->setExtensionAttributes($extensionAttributes);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->devicesById('device-id')->patch($requestBody);


```