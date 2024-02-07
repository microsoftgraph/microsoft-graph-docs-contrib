---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UsedRequestBuilderGetRequestConfiguration();
$queryParameters = UsedRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["LastUsed/LastAccessedDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->insights()->used()->get($requestConfiguration)->wait();

```