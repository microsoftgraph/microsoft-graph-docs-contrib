---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttribute;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttributeDataType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttribute();
$requestBody->setDisplayName('Hobby');
$requestBody->setDescription('Your hobby');
$requestBody->setDataType(new IdentityUserFlowAttributeDataType('string'));

$result = $graphServiceClient->identity()->userFlowAttributes()->post($requestBody)->wait();

```