---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LearningSelfInitiatedCourse();
$requestBody->set@odatatype('#microsoft.graph.learningSelfInitiatedCourse');

$requestBody->setCompletedDateTime(null);

$requestBody->setCompletionPercentage(30);

$requestBody->setExternalCourseActivityId('12a2228a-e020-11ec-9d64-0242ac120002');

$requestBody->setLearningContentId('57baf9dc-e020-11ec-9d64-0242ac120002');

$requestBody->setLearningProviderId('01e8f81b-3060-4dec-acf0-0389665a0a38');

$requestBody->setStartedDateTime(new DateTime('2021-05-11T22:57:17+00:00'));

$requestBody->setStatus(new CourseStatus('inprogress'));



$result = $graphServiceClient->employeeExperience()->learningProviders()->byLearningProviderId('learningProvider-id')->learningCourseActivities()->byLearningCourseActivitieId('learningCourseActivity-id')->patch($requestBody);


```