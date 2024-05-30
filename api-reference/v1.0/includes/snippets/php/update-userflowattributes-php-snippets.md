---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttribute;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttribute();
$requestBody->setDescription('Your new hobby');

$result = $graphServiceClient->identity()->userFlowAttributes()->byIdentityUserFlowAttributeId('identityUserFlowAttribute-id')->patch($requestBody)->wait();

```