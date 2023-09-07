---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationGradingCategory();
$requestBody->setDisplayName('Quiz-1');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->gradingCategories()->byEducationGradingCategoryId('educationGradingCategory-id')->patch($requestBody)->wait();

```