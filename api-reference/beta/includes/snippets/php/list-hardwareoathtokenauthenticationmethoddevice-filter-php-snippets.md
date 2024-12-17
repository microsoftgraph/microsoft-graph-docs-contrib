---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Directory\AuthenticationMethodDevices\HardwareOathDevices\HardwareOathDevicesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new HardwareOathDevicesRequestBuilderGetRequestConfiguration();
$queryParameters = HardwareOathDevicesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "status eq 'activated'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->authenticationMethodDevices()->hardwareOathDevices()->get($requestConfiguration)->wait();

```