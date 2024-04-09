---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\DeviceManagement\VirtualEndpoint\RetrieveScopedPermissions\RetrieveScopedPermissionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RetrieveScopedPermissionsRequestBuilderGetRequestConfiguration();
$queryParameters = RetrieveScopedPermissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->retrieveScopedPermissions()->get($requestConfiguration)->wait();

```