---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcProvisioningPolicyItemRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcProvisioningPolicyItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","description","displayName","domainJoinConfigurations","imageDisplayName","imageId","imageType","windowsSetting","cloudPcGroupDisplayName","gracePeriodInHours","localAdminEnabled","alternateResourceUrl"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->get($requestConfiguration)->wait();

```