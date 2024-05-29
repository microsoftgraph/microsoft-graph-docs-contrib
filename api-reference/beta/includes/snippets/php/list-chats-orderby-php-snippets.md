---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Chats\ChatsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatsRequestBuilderGetRequestConfiguration();
$queryParameters = ChatsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["lastMessagePreview/createdDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->get($requestConfiguration)->wait();

```