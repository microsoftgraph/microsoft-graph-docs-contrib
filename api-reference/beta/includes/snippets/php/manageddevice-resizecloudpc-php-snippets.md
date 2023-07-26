---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResizeCloudPcPostRequestBody();
$requestBody->setTargetServicePlanId('30d0e128-de93-41dc-89ec-33d84bb662a0');



$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->resizeCloudPc()->post($requestBody);


```