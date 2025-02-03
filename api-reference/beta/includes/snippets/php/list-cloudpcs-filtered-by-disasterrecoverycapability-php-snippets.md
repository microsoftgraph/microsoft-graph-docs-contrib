---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\CloudPCsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPCsRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPCsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","disasterRecoveryCapability"];
$queryParameters->filter = "disasterRecoveryCapability/capabilityType eq 'failover'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->get($requestConfiguration)->wait();

```