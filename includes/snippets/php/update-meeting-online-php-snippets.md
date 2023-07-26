---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Event();
$requestBody->setIsOnlineMeeting(true);

$requestBody->setOnlineMeetingProvider(new OnlineMeetingProviderType('teamsForBusiness'));



$result = $graphServiceClient->me()->events()->byEventId('event-id')->patch($requestBody);


```