---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomSecurityAttributeDefinition();
$requestBody->setDescription('Target completion date (YYYY/MM/DD)');

$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->byCustomSecurityAttributeDefinitionId('customSecurityAttributeDefinition-id')->patch($requestBody)->wait();

```