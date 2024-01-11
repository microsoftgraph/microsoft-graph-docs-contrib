---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetActionStatusReportsPostRequestBody();
$requestBody->setFilter('ActionState eq \'failed\'');
$requestBody->setSelect(['Id', 'CloudPcDeviceDisplayName', 'BulkActionId', 'BulkActionDisplayName', 'CloudPcId', 'InitiatedByUserPrincipalName', 'DeviceOwnerUserPrincipalName', 'Action', 'ActionState', 'RequestDateTime', 'LastUpdatedDateTime', 'ActionParameters', 	]);
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getActionStatusReports()->post($requestBody)->wait();

```