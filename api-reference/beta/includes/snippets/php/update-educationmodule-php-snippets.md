---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationModule;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModule();
$requestBody->setDisplayName('New_Module5 updated');
$requestBody->setDescription('updated for description');
$additionalData = [
	'languageTag' => 'en-GB',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->patch($requestBody)->wait();

```