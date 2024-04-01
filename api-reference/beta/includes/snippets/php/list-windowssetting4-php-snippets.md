---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WindowsRequestBuilderGetRequestConfiguration();
$queryParameters = WindowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->settings()->windows()->get($requestConfiguration)->wait();

```