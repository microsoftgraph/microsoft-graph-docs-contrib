---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Communications\GetAllOnlineMeetingMessages\GetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["conversation"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->getAllOnlineMeetingMessages()->get($requestConfiguration)->wait();

```