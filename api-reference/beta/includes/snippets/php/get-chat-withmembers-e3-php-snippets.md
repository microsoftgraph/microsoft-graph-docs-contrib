---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatRequestBuilderGetRequestConfiguration();
$queryParameters = ChatRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["members"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->get($requestConfiguration);


```