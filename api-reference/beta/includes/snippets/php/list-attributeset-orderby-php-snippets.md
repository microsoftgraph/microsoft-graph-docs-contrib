---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AttributeSetsRequestBuilderGetRequestConfiguration();
$queryParameters = AttributeSetsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->attributeSets()->get($requestConfiguration)->wait();

```