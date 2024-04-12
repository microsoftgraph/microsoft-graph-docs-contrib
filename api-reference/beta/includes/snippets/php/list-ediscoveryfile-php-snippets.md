---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\ReviewSets\Item\Files\FilesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilesRequestBuilderGetRequestConfiguration();
$queryParameters = FilesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 5;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->files()->get($requestConfiguration)->wait();

```