---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendVirtualAppointmentReminderSmsPostRequestBody();
$requestBody->setPhoneNumbers(['+13129224122', '+1242421412', 	]);
$requestBody->setRemindBeforeTimeInMinutesType(new RemindBeforeTimeInMinutesType('mins15'));

$graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->sendVirtualAppointmentReminderSms()->post($requestBody)->wait();

```