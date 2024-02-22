---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SourceCollectionItemRequestBuilderGetRequestConfiguration();
$queryParameters = SourceCollectionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->sourceCollections()->bySourceCollectionId('sourceCollection-id')->get($requestConfiguration)->wait();

```