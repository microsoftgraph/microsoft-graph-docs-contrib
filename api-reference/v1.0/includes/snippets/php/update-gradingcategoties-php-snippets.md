---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationGradingCategory();
$requestBody->setDisplayName('Test updated');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->gradingCategories()->byEducationGradingCategoryId('educationGradingCategory-id')->patch($requestBody)->wait();

```