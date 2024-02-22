---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatItemRequestBuilderGetRequestConfiguration();
$queryParameters = ChatItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["lastMessagePreview"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->get($requestConfiguration)->wait();

```