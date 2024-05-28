---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Chats\Item\ChatItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatItemRequestBuilderGetRequestConfiguration();
$queryParameters = ChatItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["members"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->get($requestConfiguration)->wait();

```