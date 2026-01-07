---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Reports\ReadingCoachPassages\ReadingCoachPassagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ReadingCoachPassagesRequestBuilderGetRequestConfiguration();
$queryParameters = ReadingCoachPassagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "practicedAtDateTime gt 2025-06-22T00:00:00Z and practicedAtDateTime lt 2025-06-23T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->reports()->readingCoachPassages()->get($requestConfiguration)->wait();

```