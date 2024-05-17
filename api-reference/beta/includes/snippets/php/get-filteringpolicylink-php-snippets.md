---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\NetworkAccess\FilteringPolicies\Item\FilteringPolicyItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilteringPolicyItemRequestBuilderGetRequestConfiguration();
$queryParameters = FilteringPolicyItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["policyRules"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->filteringPolicies()->byFilteringPolicyId('filteringPolicy-id')->get($requestConfiguration)->wait();

```