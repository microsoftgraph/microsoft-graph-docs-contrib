---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetRemoteConnectionHistoricalReportsPostRequestBody();
$requestBody->setFilter('CloudPcId eq \'40f9315c-5b63-4126-9f89-b7dcb14fffff\' and SignInDateTime gt datetime\'2022-09-09T01:22:51.849Z\'');

$requestBody->setSelect(['SignInDateTime', 'SignOutDateTime', 'UsageInHour', 'RoundTripTimeInMsP50', 'AvailableBandwidthInMBpsP50', 'RemoteSignInTimeInSec', 	]);

$requestBody->setTop(25);

$requestBody->setSkip(0);



$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getRemoteConnectionHistoricalReports()->post($requestBody);


```