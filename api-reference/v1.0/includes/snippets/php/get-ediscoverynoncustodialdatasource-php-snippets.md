---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration();
$queryParameters = EdiscoveryNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["dataSource"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->noncustodialDataSources()->byEdiscoveryNoncustodialDataSourceId('ediscoveryNoncustodialDataSource-id')->get($requestConfiguration)->wait();

```