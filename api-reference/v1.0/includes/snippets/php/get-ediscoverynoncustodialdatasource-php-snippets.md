---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration();
$queryParameters = EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["dataSource"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->noncustodialDataSources()->byEdiscoveryNoncustodialDataSourceId('ediscoveryNoncustodialDataSource-id')->get($requestConfiguration)->wait();

```