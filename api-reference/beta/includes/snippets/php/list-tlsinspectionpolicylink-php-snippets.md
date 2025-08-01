---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\NetworkAccess\FilteringProfiles\Item\Policies\PoliciesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PoliciesRequestBuilderGetRequestConfiguration();
$queryParameters = PoliciesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isof('microsoft.graph.networkaccess.securityProviderPolicyLink')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->policies()->get($requestConfiguration)->wait();

```