---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceEnrollmentLimitConfiguration();
$requestBody->set@odatatype('#microsoft.graph.deviceEnrollmentLimitConfiguration');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPriority(8);

$requestBody->setVersion(7);

$requestBody->setLimit(5);



$result = $graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->post($requestBody);


```