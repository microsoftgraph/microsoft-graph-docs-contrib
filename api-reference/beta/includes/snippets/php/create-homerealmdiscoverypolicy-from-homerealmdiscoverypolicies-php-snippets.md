---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\HomeRealmDiscoveryPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HomeRealmDiscoveryPolicy();
$requestBody->setDefinition(['{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}', 	]);
$requestBody->setDisplayName('displayName-value');
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->homeRealmDiscoveryPolicies()->post($requestBody)->wait();

```