---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExtensionProperty();
$requestBody->setName('jobGroup');
$requestBody->setDataType('String');
$requestBody->setIsMultiValued(true);
$requestBody->setTargetObjects(['User', 	]);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->extensionProperties()->post($requestBody)->wait();

```