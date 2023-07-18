---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LearningSelfInitiatedCourse();
$requestBody->setOdataType('#microsoft.graph.learningSelfInitiatedCourse');

$requestBody->setCompletedDateTime(null);

$requestBody->setCompletionPercentage(20);

$requestBody->setExternalCourseActivityId('12a2228a-e020-11ec-9d64-0242ac120002');

$requestBody->setLearningContentId('57baf9dc-e020-11ec-9d64-0242ac120002');

$requestBody->setLearnerUserId('7ba2228a-e020-11ec-9d64-0242ac120002');

$requestBody->setStartedDateTime(new \DateTime('2021-05-21T22:57:17+00:00'));

$requestBody->setStatus(new CourseStatus('inProgress'));



$result = $graphServiceClient->employeeExperience()->learningProviders()->byLearningProviderId('learningProvider-id')->learningCourseActivities()->post($requestBody);


```