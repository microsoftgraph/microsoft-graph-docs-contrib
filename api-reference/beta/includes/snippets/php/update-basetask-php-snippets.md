---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BaseTask();
$requestBody->set@odatatype('#microsoft.graph.task');

$requestBody->setTextBody('String');

$requestBody->setBodyLastModifiedDateTime(new DateTime('String (timestamp)'));

$requestBody->setCompletedDateTime(new DateTime('String (timestamp)'));

$dueDateTime = new DateTimeTimeZone();
$dueDateTime->set@odatatype('microsoft.graph.dateTimeTimeZone');


$requestBody->setDueDateTime($dueDateTime);
$startDateTime = new DateTimeTimeZone();
$startDateTime->set@odatatype('microsoft.graph.dateTimeTimeZone');


$requestBody->setStartDateTime($startDateTime);
$requestBody->setImportance(new Importance('string'));

$recurrence = new PatternedRecurrence();
$recurrence->set@odatatype('microsoft.graph.patternedRecurrence');


$requestBody->setRecurrence($recurrence);
$requestBody->setDisplayName('String');

$requestBody->setStatus(new TaskStatus_v2('string'));

$viewpoint = new TaskViewpoint();
$viewpoint->set@odatatype('microsoft.graph.taskViewpoint');


$requestBody->setViewpoint($viewpoint);


$requestResult = $graphServiceClient->me()->tasks()->listsById('baseTaskList-id')->tasksById('baseTask-id')->patch($requestBody);


```