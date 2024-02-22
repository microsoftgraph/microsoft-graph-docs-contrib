---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageItemRequestBuilderGetRequestConfiguration();
$queryParameters = MessageItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["internetMessageHeaders"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->get($requestConfiguration)->wait();

```