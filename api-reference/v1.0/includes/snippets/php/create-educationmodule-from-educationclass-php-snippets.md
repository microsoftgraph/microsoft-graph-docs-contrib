---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModule();
$requestBody->setDisplayName('Module 1');
$requestBody->setDescription('Description for Module 1');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->post($requestBody)->wait();

```