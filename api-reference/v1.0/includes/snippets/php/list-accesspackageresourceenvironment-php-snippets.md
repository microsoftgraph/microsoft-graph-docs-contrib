---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\EntitlementManagement\ResourceEnvironments\ResourceEnvironmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ResourceEnvironmentsRequestBuilderGetRequestConfiguration();
$queryParameters = ResourceEnvironmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "originSystem eq 'SharePointOnline'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->resourceEnvironments()->get($requestConfiguration)->wait();

```