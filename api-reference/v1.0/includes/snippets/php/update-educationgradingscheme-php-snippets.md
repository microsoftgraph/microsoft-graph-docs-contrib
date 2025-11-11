---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationGradingScheme;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationGradingScheme();
$requestBody->setDisplayName('New GradingScheme name');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->gradingSchemes()->byEducationGradingSchemeId('educationGradingScheme-id')->patch($requestBody)->wait();

```