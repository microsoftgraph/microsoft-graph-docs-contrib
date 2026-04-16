---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnPremAuthenticationPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremAuthenticationPolicy();
$requestBody->setDeletedDateTime(null);
$requestBody->setDescription('Updates to policy definition to manage and control authentication settings.');
$requestBody->setDisplayName('Update policy name');
$requestBody->setDefinition(['{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}', 	]);

$result = $graphServiceClient->policies()->onPremAuthenticationPolicies()->byOnPremAuthenticationPolicyId('onPremAuthenticationPolicy-id')->patch($requestBody)->wait();

```