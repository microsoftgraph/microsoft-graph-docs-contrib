---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomSecurityAttributeDefinition();
$requestBody->setAttributeSet('Engineering');
$requestBody->setDescription('Active projects for user');
$requestBody->setIsCollection(true);
$requestBody->setIsSearchable(true);
$requestBody->setName('Project');
$requestBody->setStatus('Available');
$requestBody->setType('String');
$requestBody->setUsePreDefinedValuesOnly(true);

$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->post($requestBody)->wait();

```