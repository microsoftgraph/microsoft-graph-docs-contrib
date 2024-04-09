---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcOnPremisesConnectionItemRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcOnPremisesConnectionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","healthCheckStatus","healthCheckStatusDetail","inUse"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->onPremisesConnections()->byCloudPcOnPremisesConnectionId('cloudPcOnPremisesConnection-id')->get($requestConfiguration)->wait();

```