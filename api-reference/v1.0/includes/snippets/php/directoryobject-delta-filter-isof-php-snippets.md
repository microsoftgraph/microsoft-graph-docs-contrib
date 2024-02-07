---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isof('microsoft.graph.user') or isof('microsoft.graph.group')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directoryObjects()->delta()->get($requestConfiguration)->wait();

```