---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\Item\CloudPCItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPCItemRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPCItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->customFilter = "contains(tolower(managedDeviceName), 'a') or contains(tolower(imageDisplayName), 'a') or contains(tolower(userPrincipalName), 'a')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->get($requestConfiguration)->wait();

```