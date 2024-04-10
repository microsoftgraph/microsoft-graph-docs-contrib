---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TokenIssuancePolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TokenIssuancePolicy();
$requestBody->setDefinition(['definition-value', 	]);
$requestBody->setDisplayName('displayName-value');
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->tokenIssuancePolicies()->post($requestBody)->wait();

```