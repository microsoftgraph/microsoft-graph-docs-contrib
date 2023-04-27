---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcDeviceImage();
$requestBody->set@odatatype('#microsoft.graph.cloudPcDeviceImage');

$requestBody->setDisplayName('Display Name value');

$requestBody->setOsBuildNumber('OS Build Number value');

$requestBody->setOperatingSystem('Operating System value');

$requestBody->setVersion('Version value');

$requestBody->setSourceImageResourceId('/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage');



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->deviceImages()->post($requestBody);


```