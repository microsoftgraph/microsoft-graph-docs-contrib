---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationModule;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModule();
$requestBody->setDisplayName('Module 2');
$requestBody->setLanguageTag('en-GB');
$requestBody->setDescription('Description for Module 2');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->post($requestBody)->wait();

```