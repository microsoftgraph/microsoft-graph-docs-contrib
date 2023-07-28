---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalMeetingRegistrant();
$requestBody->setOdataType('#microsoft.graph.externalMeetingRegistrant');

$requestBody->setId('30494ab7-7338-4592-bfec-a4333be2a0a6');

$requestBody->setTenantId('909c6581-5130-43e9-88f3-fcb3582cde37');

$requestBody->setUserId('cc515404-b55c-466e-b896-992c918ecc01');



$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->registrants()->post($requestBody);


```