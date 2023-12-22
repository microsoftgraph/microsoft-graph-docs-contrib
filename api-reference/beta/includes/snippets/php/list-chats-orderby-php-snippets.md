---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatsRequestBuilderGetRequestConfiguration();
$queryParameters = ChatsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["lastMessagePreview/createdDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->get($requestConfiguration)->wait();

```