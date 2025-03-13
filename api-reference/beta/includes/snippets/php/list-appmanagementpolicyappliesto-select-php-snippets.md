---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Policies\AppManagementPolicies\Item\AppliesTo\AppliesToRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AppliesToRequestBuilderGetRequestConfiguration();
$queryParameters = AppliesToRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","appId","displayName","createdDateTime"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->appManagementPolicies()->byAppManagementPolicyId('appManagementPolicy-id')->appliesTo()->get($requestConfiguration)->wait();

```