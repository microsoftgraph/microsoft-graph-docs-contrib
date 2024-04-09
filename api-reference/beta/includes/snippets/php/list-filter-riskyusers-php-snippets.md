---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityProtection\RiskyUsers\RiskyUsersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RiskyUsersRequestBuilderGetRequestConfiguration();
$queryParameters = RiskyUsersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "riskLevel eq microsoft.graph.riskLevel'medium'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityProtection()->riskyUsers()->get($requestConfiguration)->wait();

```