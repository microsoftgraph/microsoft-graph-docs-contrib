---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetDailyAggregatedRemoteConnectionReportsPostRequestBody();
$requestBody->setFilter('CloudPcId eq \'5db15afe-025d-4f1b-b43a-d0554b63ffff\' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ');

$requestBody->setSearch('abc0907');

$requestBody->setSelect(['EventDateTime', 'CloudPcId', 'ManagedDeviceName', 'UsageInHour', 'RoundTripTimeInMsP50', 'AvailableBandwidthInMBpsP50', 'RemoteSignInTimeInSecP50', 'UserPrincipalName', 	]);

$requestBody->setSkip(0);

$requestBody->setTop(25);



$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getDailyAggregatedRemoteConnectionReports()->post($requestBody);


```