---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceManagement();
$requestBody->set@odatatype('#microsoft.graph.deviceManagement');



$result = $graphServiceClient->deviceManagement()->patch($requestBody);


```