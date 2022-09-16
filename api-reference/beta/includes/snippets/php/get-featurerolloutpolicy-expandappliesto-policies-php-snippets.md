---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new FeatureRolloutPolicyRequestBuilderGetRequestConfiguration();

$queryParameters = new FeatureRolloutPolicyRequestBuilderGetQueryParameters();
$queryParameters->expand = ["appliesTo"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->policies()->featureRolloutPoliciesById('featureRolloutPolicy-id')->get($requestConfiguration);


```