---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendVirtualAppointmentSmsPostRequestBody();
$requestBody->setPhoneNumbers(['+13129224122', '+1242421412', 	]);
$additionalData = [
	'virtualAppointmentSmsType' => 'confirmation',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->sendVirtualAppointmentSms()->post($requestBody)->wait();

```