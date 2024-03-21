---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WindowsRequestBuilderGetRequestConfiguration();
$queryParameters = WindowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "settingType eq 'backup'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->settings()->windows()->get($requestConfiguration)->wait();

```