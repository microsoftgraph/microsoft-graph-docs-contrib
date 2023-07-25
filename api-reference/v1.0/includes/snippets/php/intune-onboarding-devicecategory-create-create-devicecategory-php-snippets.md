---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceCategory();
$requestBody->set@odatatype('#microsoft.graph.deviceCategory');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');



$result = $graphServiceClient->deviceManagement()->deviceCategories()->post($requestBody);


```