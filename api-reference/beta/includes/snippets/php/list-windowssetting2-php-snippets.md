---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Settings\Windows\WindowsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WindowsRequestBuilderGetRequestConfiguration();
$queryParameters = WindowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "settingType eq 'roaming'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->settings()->windows()->get($requestConfiguration)->wait();

```