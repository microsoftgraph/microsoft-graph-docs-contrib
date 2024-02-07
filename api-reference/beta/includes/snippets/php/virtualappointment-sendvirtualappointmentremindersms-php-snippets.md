---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendVirtualAppointmentReminderSmsPostRequestBody();
$requestBody->setRemindBeforeTimeInMinutesType(new RemindBeforeTimeInMinutesType('mins15'));
$additionalData = [
	'phoneNumbers' => [
'+13129224122', '+1242421412', ],
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->sendVirtualAppointmentReminderSms()->post($requestBody)->wait();

```