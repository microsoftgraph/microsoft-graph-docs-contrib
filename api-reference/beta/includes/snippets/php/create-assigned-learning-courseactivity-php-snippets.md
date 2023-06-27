---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LearningAssignment();
$requestBody->set@odatatype('#microsoft.graph.learningAssignment');

$requestBody->setAssignedDateTime(new DateTime('2021-05-11T22:57:17+00:00'));

$requestBody->setAssignmentType(new AssignmentType('required'));

$requestBody->setAssignerUserId('cea1684d-57dc-438d-a9d1-e666ec1a7f3d');

$requestBody->setCompletedDateTime(null);

$requestBody->setCompletionPercentage(20);

$dueDateTime = new DateTimeTimeZone();
$dueDateTime->setDateTime('2022-09-22T16:05:00.0000000');

$dueDateTime->setTimeZone('UTC');


$requestBody->setDueDateTime($dueDateTime);
$requestBody->setExternalCourseActivityId('12a2228a-e020-11ec-9d64-0242ac120002');

$requestBody->setLearningContentId('57baf9dc-e020-11ec-9d64-0242ac120002');

$requestBody->setLearningProviderId('01e8f81b-3060-4dec-acf0-0389665a0a38');

$requestBody->setLearnerUserId('7ba2228a-e020-11ec-9d64-0242ac120002');

$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));

$notes->setContent('required assignment added for user');


$requestBody->setNotes($notes);
$requestBody->setStatus(new CourseStatus('notstarted'));



$result = $graphServiceClient->employeeExperience()->learningProviders()->byLearningProviderId('learningProvider-id')->learningCourseActivities()->post($requestBody);


```