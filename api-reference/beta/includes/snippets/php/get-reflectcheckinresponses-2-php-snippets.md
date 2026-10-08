---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Reports\ReflectCheckInResponses\ReflectCheckInResponsesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ReflectCheckInResponsesRequestBuilderGetRequestConfiguration();
$queryParameters = ReflectCheckInResponsesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "submitDateTime gt 2023-10-10T00:00:00.000Z and submitDateTime lt 2023-10-11T00:00:00.000Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->reports()->reflectCheckInResponses()->get($requestConfiguration)->wait();

```