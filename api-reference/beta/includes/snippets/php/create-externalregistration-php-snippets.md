---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RegistrationPostRequestBody();
$additionalData = [
		'@odata.type' => '#microsoft.graph.externalMeetingRegistration', 
		'allowedRegistrant' => 'everyone', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->me()->onlineMeetingsById('onlineMeeting-id')->registration()->post($requestBody);


```