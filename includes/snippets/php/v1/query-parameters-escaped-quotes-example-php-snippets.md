---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "subject eq 'let''s meet for lunch?'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->get($requestConfiguration)->wait();

```