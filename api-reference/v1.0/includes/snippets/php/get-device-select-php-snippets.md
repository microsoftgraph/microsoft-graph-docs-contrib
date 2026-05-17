---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Devices\Item\DeviceItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeviceItemRequestBuilderGetRequestConfiguration();
$queryParameters = DeviceItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","extensionAttributes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->devices()->byDeviceId('device-id')->get($requestConfiguration)->wait();

```