---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ExternalPartnerSettings\ExternalPartnerSettingsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ExternalPartnerSettingsRequestBuilderGetRequestConfiguration();
$queryParameters = ExternalPartnerSettingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","partnerId","enableConnection"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->get($requestConfiguration)->wait();

```