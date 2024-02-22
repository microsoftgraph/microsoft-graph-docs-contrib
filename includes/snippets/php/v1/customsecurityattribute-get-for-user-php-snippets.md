---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserItemRequestBuilderGetRequestConfiguration();
$queryParameters = UserItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["customSecurityAttributes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->get($requestConfiguration)->wait();

```