---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OutlookTask();
$requestBody->setSubject('Shop for dinner');

$startDateTime = new DateTimeTimeZone();
$startDateTime->setDateTime('2016-04-23T18:00:00');

$startDateTime->setTimeZone('Pacific Standard Time');


$requestBody->setStartDateTime($startDateTime);
$dueDateTime = new DateTimeTimeZone();
$dueDateTime->setDateTime('2016-04-25T13:00:00');

$dueDateTime->setTimeZone('Pacific Standard Time');


$requestBody->setDueDateTime($dueDateTime);


$result = $graphServiceClient->me()->outlook()->taskFoldersById('outlookTaskFolder-id')->tasks()->post($requestBody);


```