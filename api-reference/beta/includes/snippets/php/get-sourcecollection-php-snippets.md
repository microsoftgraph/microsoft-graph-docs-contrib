---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SourceCollectionItemRequestBuilderGetRequestConfiguration();
$queryParameters = SourceCollectionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->sourceCollections()->bySourceCollectionId('sourceCollection-id')->get($requestConfiguration)->wait();

```