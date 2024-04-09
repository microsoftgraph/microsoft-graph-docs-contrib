---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\NoncustodialDataSources\Item\EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration();
$queryParameters = EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["dataSource"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->noncustodialDataSources()->byEdiscoveryNoncustodialDataSourceId('ediscoveryNoncustodialDataSource-id')->get($requestConfiguration)->wait();

```