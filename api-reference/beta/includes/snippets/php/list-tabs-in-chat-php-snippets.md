---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TabsRequestBuilderGetRequestConfiguration();
$queryParameters = TabsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsApp"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->tabs()->get($requestConfiguration)->wait();

```