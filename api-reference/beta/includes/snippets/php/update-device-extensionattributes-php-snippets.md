---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Device();
$extensionAttributes = new OnPremisesExtensionAttributes();
$extensionAttributes->setExtensionAttribute1('BYOD-Device');


$requestBody->setExtensionAttributes($extensionAttributes);


$result = $graphServiceClient->devicesById('device-id')->patch($requestBody);


```