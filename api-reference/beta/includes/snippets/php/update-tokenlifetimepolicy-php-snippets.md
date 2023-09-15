---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TokenLifetimePolicy();
$requestBody->setDefinition(['{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}', 	]);
$requestBody->setDisplayName('Contoso token lifetime policy');
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->tokenLifetimePolicies()->byTokenLifetimePolicyId('tokenLifetimePolicy-id')->patch($requestBody)->wait();

```