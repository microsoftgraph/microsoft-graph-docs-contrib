---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationRubric();
$requestBody->setDisplayName('Example Credit Rubric after display name patch');

$result = $graphServiceClient->education()->me()->rubrics()->byEducationRubricId('educationRubric-id')->patch($requestBody)->wait();

```