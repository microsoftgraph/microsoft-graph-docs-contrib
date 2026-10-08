---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnPremAuthenticationPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremAuthenticationPolicy();
$requestBody->setDescription('Policy definition to manage and control authentication settings.');
$requestBody->setDisplayName('Policy name');
$requestBody->setDefinition(['{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}', 	]);
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->onPremAuthenticationPolicies()->post($requestBody)->wait();

```