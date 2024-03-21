---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationCategory();
$requestBody->setDisplayName('Quizzes');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentCategories()->post($requestBody)->wait();

```