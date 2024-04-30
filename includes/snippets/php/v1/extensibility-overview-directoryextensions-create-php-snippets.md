---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExtensionProperty;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExtensionProperty();
$requestBody->setName('jobGroupTracker');
$requestBody->setDataType('String');
$requestBody->setTargetObjects(['User', 	]);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->extensionProperties()->post($requestBody)->wait();

```