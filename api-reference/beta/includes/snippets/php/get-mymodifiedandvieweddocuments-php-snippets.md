---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Insights\Used\UsedRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UsedRequestBuilderGetRequestConfiguration();
$queryParameters = UsedRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["LastUsed/LastAccessedDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->insights()->used()->get($requestConfiguration)->wait();

```