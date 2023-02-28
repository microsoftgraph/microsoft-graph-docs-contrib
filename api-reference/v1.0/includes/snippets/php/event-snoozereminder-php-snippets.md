---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SnoozeReminderPostRequestBody();
$newReminderTime = new DateTimeTimeZone();
$newReminderTime->setDateTime('dateTime-value');

$newReminderTime->setTimeZone('timeZone-value');


$requestBody->setNewReminderTime($newReminderTime);


$graphServiceClient->me()->eventsById('event-id')->microsoftGraphSnoozeReminder()->post($requestBody);


```