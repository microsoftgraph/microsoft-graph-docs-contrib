---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\GetProvisionedCloudPCs(groupId='{groupId}',servicePlanId='{servicePlanId}')\GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilderGetRequestConfiguration();
$queryParameters = GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","powerState","connectivityResult","lastLoginResult","lastRemoteActionResult","osVersion","provisioningPolicyName","userAccountType"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->getProvisionedCloudPCsWithGroupIdWithServicePlanId('{groupId}', '{servicePlanId}', )->get($requestConfiguration)->wait();

```