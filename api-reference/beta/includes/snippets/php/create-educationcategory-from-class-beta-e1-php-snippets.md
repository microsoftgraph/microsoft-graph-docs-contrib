---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationCategory();
$requestBody->setDisplayName('Quizzes');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentCategories()->post($requestBody)->wait();

```