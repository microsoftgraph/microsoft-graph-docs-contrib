---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationClass();
$requestBody->setDescription('History - World History 1');
$requestBody->setDisplayName('World History Level 1');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->patch($requestBody)->wait();

```