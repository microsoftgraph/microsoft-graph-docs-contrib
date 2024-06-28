---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationGradingCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationGradingCategory();
$requestBody->setDisplayName('Quiz-1');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->gradingCategories()->byEducationGradingCategoryId('educationGradingCategory-id')->patch($requestBody)->wait();

```