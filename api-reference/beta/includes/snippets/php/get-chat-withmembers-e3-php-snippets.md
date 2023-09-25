---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatItemRequestBuilderGetRequestConfiguration();
$queryParameters = ChatItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["members"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->get($requestConfiguration)->wait();

```