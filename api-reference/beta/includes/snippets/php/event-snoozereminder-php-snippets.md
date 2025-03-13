---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Events\Item\SnoozeReminder\SnoozeReminderPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SnoozeReminderPostRequestBody();
$newReminderTime = new DateTimeTimeZone();
$newReminderTime->setDateTime('2016-10-19T10:37:00Z');
$newReminderTime->setTimeZone('timeZone-value');
$requestBody->setNewReminderTime($newReminderTime);

$graphServiceClient->me()->events()->byEventId('event-id')->snoozeReminder()->post($requestBody)->wait();

```