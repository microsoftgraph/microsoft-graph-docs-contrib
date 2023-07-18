---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RestoreCloudPcPostRequestBody();
$requestBody->setCloudPcSnapshotId('A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8');



$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->restoreCloudPc()->post($requestBody);


```