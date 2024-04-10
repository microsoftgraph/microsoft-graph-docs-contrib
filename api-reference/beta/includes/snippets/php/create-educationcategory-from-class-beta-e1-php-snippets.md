---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationCategory();
$requestBody->setDisplayName('Quizzes');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentCategories()->post($requestBody)->wait();

```