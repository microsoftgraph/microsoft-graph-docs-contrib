---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RetrieveScopedPermissionsRequestBuilderGetRequestConfiguration();
$queryParameters = RetrieveScopedPermissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->retrieveScopedPermissions()->get($requestConfiguration)->wait();

```