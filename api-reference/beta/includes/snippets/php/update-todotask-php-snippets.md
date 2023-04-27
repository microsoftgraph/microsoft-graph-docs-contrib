---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TodoTask();
$dueDateTime = new DateTimeTimeZone();
$dueDateTime->setDateTime('2020-07-25T16:00:00');

$dueDateTime->setTimeZone('Eastern Standard Time');


$requestBody->setDueDateTime($dueDateTime);


$result = $graphServiceClient->me()->todo()->listsById('todoTaskList-id')->tasksById('todoTask-id')->patch($requestBody);


```