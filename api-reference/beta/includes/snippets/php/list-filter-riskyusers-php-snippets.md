---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityProtection\RiskyUsers\RiskyUsersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RiskyUsersRequestBuilderGetRequestConfiguration();
$queryParameters = RiskyUsersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "riskLevel eq microsoft.graph.riskLevel'medium'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityProtection()->riskyUsers()->get($requestConfiguration)->wait();

```