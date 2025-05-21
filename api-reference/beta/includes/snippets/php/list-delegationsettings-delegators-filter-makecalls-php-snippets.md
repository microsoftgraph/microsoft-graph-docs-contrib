---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Communications\CallSettings\Delegators\DelegatorsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DelegatorsRequestBuilderGetRequestConfiguration();
$queryParameters = DelegatorsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "allowedActions/makeCalls eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->communications()->callSettings()->delegators()->get($requestConfiguration)->wait();

```