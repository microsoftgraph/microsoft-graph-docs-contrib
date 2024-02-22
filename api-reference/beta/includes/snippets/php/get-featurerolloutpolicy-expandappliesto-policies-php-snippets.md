---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FeatureRolloutPolicyItemRequestBuilderGetRequestConfiguration();
$queryParameters = FeatureRolloutPolicyItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["appliesTo"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->featureRolloutPolicies()->byFeatureRolloutPolicyId('featureRolloutPolicy-id')->get($requestConfiguration)->wait();

```