---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Teamwork\GetAllTargetedMessages\GetAllTargetedMessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllTargetedMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllTargetedMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "from/application/id eq '6d23e712-527b-406f-8d59-d02927885918'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->getAllTargetedMessages()->get($requestConfiguration)->wait();

```