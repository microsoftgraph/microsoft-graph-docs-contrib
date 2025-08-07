---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityEstimateStatistics\EstimateStatisticsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EstimateStatisticsPostRequestBody();
$additionalData = [
	'statisticsOptions' => 'includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityEstimateStatistics()->post($requestBody)->wait();

```