---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->employeeExperience()->learningProviders()->byLearningProviderId('learningProvider-id')->learningCourseActivities()->byLearningCourseActivityId('learningCourseActivity-id')->delete()->wait();

```