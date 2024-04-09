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
$queryParameters->filter = "recommendationType eq 'turnOffPerUserMFA'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->recommendations()->get($requestConfiguration)->wait();

```