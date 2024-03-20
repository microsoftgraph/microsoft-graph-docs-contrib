---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserItemRequestBuilderGetRequestConfiguration();
$queryParameters = UserItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","mail","mobilePhone"];
$queryParameters->expand = ["extensions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->get($requestConfiguration)->wait();

```