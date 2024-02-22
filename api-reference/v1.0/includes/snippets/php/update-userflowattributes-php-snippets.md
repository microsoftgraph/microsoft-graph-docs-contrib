---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttribute();
$requestBody->setDescription('Your new hobby');

$result = $graphServiceClient->identity()->userFlowAttributes()->byIdentityUserFlowAttributeId('identityUserFlowAttribute-id')->patch($requestBody)->wait();

```