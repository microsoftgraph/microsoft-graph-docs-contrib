---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcProvisioningPolicyRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcProvisioningPolicyRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["assignments"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->get($requestConfiguration)->wait();

```