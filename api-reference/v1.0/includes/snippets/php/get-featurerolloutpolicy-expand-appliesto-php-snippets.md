---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FeatureRolloutPolicyItemRequestBuilderGetRequestConfiguration();
$queryParameters = FeatureRolloutPolicyItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["appliesTo"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->featureRolloutPolicies()->byFeatureRolloutPolicyId('featureRolloutPolicy-id')->get($requestConfiguration)->wait();

```