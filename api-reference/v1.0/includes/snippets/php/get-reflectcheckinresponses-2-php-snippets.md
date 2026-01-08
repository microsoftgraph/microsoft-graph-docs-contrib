---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Reports\ReflectCheckInResponses\ReflectCheckInResponsesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ReflectCheckInResponsesRequestBuilderGetRequestConfiguration();
$queryParameters = ReflectCheckInResponsesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "submitDateTime gt 2025-06-11T00:00:00.000Z and submitDateTime lt 2025-06-12T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->reports()->reflectCheckInResponses()->get($requestConfiguration)->wait();

```