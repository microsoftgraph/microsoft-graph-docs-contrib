---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$requestBody->setIsOnlineMeeting(true);

$requestBody->setOnlineMeetingProvider(new OnlineMeetingProviderType('teamsforbusiness'));



$result = $graphServiceClient->me()->eventsById('event-id')->patch($requestBody);


```