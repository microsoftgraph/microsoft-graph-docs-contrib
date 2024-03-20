---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->employeeExperience()->learningCourseActivities()->byLearningCourseActivityId('learningCourseActivity-id')->get()->wait();

```