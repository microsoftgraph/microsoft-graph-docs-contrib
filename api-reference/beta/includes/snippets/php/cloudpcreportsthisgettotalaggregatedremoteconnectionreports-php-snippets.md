---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetTotalAggregatedRemoteConnectionReportsPostRequestBody();
$requestBody->setTop(25);

$requestBody->setSkip(0);

$requestBody->setFilter('(TotalUsageInHour ge 40 and TotalUsageInHour le 80)');

$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'TotalUsageInHour', 'DaysSinceLastSignIn', 	]);



$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getTotalAggregatedRemoteConnectionReports()->post($requestBody);


```