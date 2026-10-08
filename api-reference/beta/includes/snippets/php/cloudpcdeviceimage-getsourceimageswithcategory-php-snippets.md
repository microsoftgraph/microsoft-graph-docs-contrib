---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\DeviceImages\GetSourceImages\GetSourceImagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetSourceImagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetSourceImagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "category eq 'managedImage'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->deviceImages()->getSourceImages()->get($requestConfiguration)->wait();

```