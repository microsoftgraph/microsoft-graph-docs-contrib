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
$requestBody->setDisplayName('Contoso default HRD Policy');

$result = $graphServiceClient->policies()->homeRealmDiscoveryPolicies()->byHomeRealmDiscoveryPolicyId('homeRealmDiscoveryPolicy-id')->patch($requestBody)->wait();

```