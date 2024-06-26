---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Channels\Item\Messages\MessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 1;
$queryParameters->expand = ["replies"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->get($requestConfiguration)->wait();

```