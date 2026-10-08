---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\GetAllTargetedMessages\GetAllTargetedMessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllTargetedMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllTargetedMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->getAllTargetedMessages()->get($requestConfiguration)->wait();

```