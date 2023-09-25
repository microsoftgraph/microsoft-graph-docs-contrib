---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RiskyUsersRequestBuilderGetRequestConfiguration();
$queryParameters = RiskyUsersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "riskLevel eq microsoft.graph.riskLevel'medium'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityProtection()->riskyUsers()->get($requestConfiguration)->wait();

```