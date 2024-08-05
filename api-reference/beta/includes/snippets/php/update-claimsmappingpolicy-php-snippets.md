---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ClaimsMappingPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClaimsMappingPolicy();
$requestBody->setDisplayName('UpdateClaimsPolicy');

$result = $graphServiceClient->policies()->claimsMappingPolicies()->byClaimsMappingPolicyId('claimsMappingPolicy-id')->patch($requestBody)->wait();

```