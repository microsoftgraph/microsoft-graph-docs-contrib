---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalMeetingRegistrant();
$requestBody->setOdataType('#microsoft.graph.externalMeetingRegistrant');

$requestBody->setId('9d96988d-a66a-46ce-aad7-0b245615b297');



$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->registrants()->post($requestBody);


```