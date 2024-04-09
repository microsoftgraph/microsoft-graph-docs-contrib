---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Directory\Recommendations\RecommendationsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RecommendationsRequestBuilderGetRequestConfiguration();
$queryParameters = RecommendationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'";
$queryParameters->expand = ["impactedResources"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->recommendations()->get($requestConfiguration)->wait();

```