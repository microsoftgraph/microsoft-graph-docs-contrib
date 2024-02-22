---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationRubric();
$requestBody->setDisplayName('Example Credit Rubric after display name patch');

$result = $graphServiceClient->education()->me()->rubrics()->byEducationRubricId('educationRubric-id')->patch($requestBody)->wait();

```