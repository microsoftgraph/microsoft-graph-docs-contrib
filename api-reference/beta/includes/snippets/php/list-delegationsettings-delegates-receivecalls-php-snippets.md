---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Communications\CallSettings\Delegates\DelegatesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DelegatesRequestBuilderGetRequestConfiguration();
$queryParameters = DelegatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "allowedActions/receiveCalls eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->communications()->callSettings()->delegates()->get($requestConfiguration)->wait();

```