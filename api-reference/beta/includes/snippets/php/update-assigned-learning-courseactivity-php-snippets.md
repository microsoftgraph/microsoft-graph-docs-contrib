---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LearningCourseActivity();
$requestBody->set@odatatype('#microsoft.graph.learningAssignment');

$requestBody->setCompletedDateTime(null);

$requestBody->setCompletionPercentage(20);

$requestBody->setLearningProviderId('01e8f81b-3060-4dec-acf0-0389665a0a38');

$requestBody->setExternalCourseActivityId('12a2228a-e020-11ec-9d64-0242ac120002');

$requestBody->setLearningContentId('57baf9dc-e020-11ec-9d64-0242ac120002');

$requestBody->setLearnerUserId('7ba2228a-e020-11ec-9d64-0242ac120002');

$requestBody->setStatus(new CourseStatus('inprogress'));

$additionalData = [
		'assignedDateTime' => '2021-05-11T22:57:17+00:00', 
		'assignmentType' => 'required', 
		'assignerUserId' => 'cea1684d-57dc-438d-a9d1-e666ec1a7f3d', 
		'dueDateTime' => $requestBody = new DueDateTime();
$		requestBody->setDateTime('2022-09-22T16:05:00.0000000');

$		requestBody->setTimeZone('UTC');


$requestBody->setDueDateTime($dueDateTime);

		'notes' => $requestBody = new Notes();
$		requestBody->setContentType('text');

$		requestBody->setContent('required assignment added for user');


$requestBody->setNotes($notes);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->employeeExperience()->learningCourseActivitiesById('learningCourseActivity-id')->patch($requestBody);


```