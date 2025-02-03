---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\CallRecords\Item\Sessions\SessionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SessionsRequestBuilderGetRequestConfiguration();
$queryParameters = SessionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["segments"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->callRecords()->byCallRecordId('callRecord-id')->sessions()->get($requestConfiguration)->wait();

```