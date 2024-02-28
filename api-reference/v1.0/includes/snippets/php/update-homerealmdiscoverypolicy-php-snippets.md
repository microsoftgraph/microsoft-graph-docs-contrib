---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HomeRealmDiscoveryPolicy();
$requestBody->setDefinition(['{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}', 	]);
$requestBody->setDisplayName('Contoso default HRD Policy');

$result = $graphServiceClient->policies()->homeRealmDiscoveryPolicies()->byHomeRealmDiscoveryPolicyId('homeRealmDiscoveryPolicy-id')->patch($requestBody)->wait();

```