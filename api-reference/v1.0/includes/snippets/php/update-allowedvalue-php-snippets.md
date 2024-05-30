---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AllowedValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AllowedValue();
$requestBody->setIsActive(false);

$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->byCustomSecurityAttributeDefinitionId('customSecurityAttributeDefinition-id')->allowedValues()->byAllowedValueId('allowedValue-id')->patch($requestBody)->wait();

```