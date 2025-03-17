---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityEstimateStatistics\EstimateStatisticsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\StatisticsOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EstimateStatisticsPostRequestBody();
$requestBody->setStatisticsOptions(new StatisticsOptions('includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityEstimateStatistics()->post($requestBody)->wait();

```