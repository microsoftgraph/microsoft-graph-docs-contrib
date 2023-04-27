---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SourceCollectionRequestBuilderGetRequestConfiguration();
$queryParameters = SourceCollectionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->sourceCollectionsById('sourceCollection-id')->get($requestConfiguration);


```