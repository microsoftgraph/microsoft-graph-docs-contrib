---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentSettings();
$requestBody->setSubmissionAnimationDisabled(true);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->patch($requestBody)->wait();

```