---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SnoozeReminderPostRequestBody;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SnoozeReminderPostRequestBody();
$newReminderTime = new DateTimeTimeZone();
$newReminderTime->setDateTime('dateTime-value');
$newReminderTime->setTimeZone('timeZone-value');
$requestBody->setNewReminderTime($newReminderTime);

$graphServiceClient->me()->events()->byEventId('event-id')->snoozeReminder()->post($requestBody)->wait();

```