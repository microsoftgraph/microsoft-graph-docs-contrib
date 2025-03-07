---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TokenLifetimePolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TokenLifetimePolicy();
$requestBody->setDefinition(['{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}', 	]);
$requestBody->setDisplayName('Contoso token lifetime policy');
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->tokenLifetimePolicies()->post($requestBody)->wait();

```