---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\OnlineMeetings\Item\SendVirtualAppointmentReminderSms\SendVirtualAppointmentReminderSmsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\AttendeeNotificationInfo;
use Microsoft\Graph\Beta\Generated\Models\RemindBeforeTimeInMinutesType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendVirtualAppointmentReminderSmsPostRequestBody();
$attendeesAttendeeNotificationInfo1 = new AttendeeNotificationInfo();
$attendeesAttendeeNotificationInfo1->setPhoneNumber('+13129224122');
$attendeesAttendeeNotificationInfo1->setTimeZone('Pacific Standard Time');
$attendeesArray []= $attendeesAttendeeNotificationInfo1;
$attendeesAttendeeNotificationInfo2 = new AttendeeNotificationInfo();
$attendeesAttendeeNotificationInfo2->setPhoneNumber('+1242421412');
$attendeesAttendeeNotificationInfo2->setTimeZone('Eastern Standard Time');
$attendeesArray []= $attendeesAttendeeNotificationInfo2;
$requestBody->setAttendees($attendeesArray);

$requestBody->setRemindBeforeTimeInMinutesType(new RemindBeforeTimeInMinutesType('mins15'));

$graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->sendVirtualAppointmentReminderSms()->post($requestBody)->wait();

```