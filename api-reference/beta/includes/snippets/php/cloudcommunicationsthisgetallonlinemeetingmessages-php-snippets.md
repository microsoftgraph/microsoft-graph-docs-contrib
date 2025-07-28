---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\GetAllOnlineMeetingMessages\GetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["conversation"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->getAllOnlineMeetingMessages()->get($requestConfiguration)->wait();

```