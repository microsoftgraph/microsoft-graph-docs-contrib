---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ProfileRequestBuilderGetRequestConfiguration();
$queryParameters = ProfileRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["names(\$select=first,last)","skills(\$select=displayName)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->profile()->get($requestConfiguration)->wait();

```