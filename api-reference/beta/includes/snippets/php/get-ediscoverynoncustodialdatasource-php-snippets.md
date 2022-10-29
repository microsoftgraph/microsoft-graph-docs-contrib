---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EdiscoveryNoncustodialDataSourceRequestBuilderGetRequestConfiguration();

$queryParameters = new EdiscoveryNoncustodialDataSourceRequestBuilderGetQueryParameters();
$queryParameters->expand = ["dataSource"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->noncustodialDataSourcesById('ediscoveryNoncustodialDataSource-id')->get($requestConfiguration);


```