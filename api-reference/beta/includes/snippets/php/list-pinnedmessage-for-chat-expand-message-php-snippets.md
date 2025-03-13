---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Chats\Item\PinnedMessages\PinnedMessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PinnedMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = PinnedMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["message"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->pinnedMessages()->get($requestConfiguration)->wait();

```