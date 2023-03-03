---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CloudPcProvisioningPolicyRequestBuilderGetRequestConfiguration();

$queryParameters = new CloudPcProvisioningPolicyRequestBuilderGetQueryParameters();
$queryParameters->expand = ["assignments"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPoliciesById('cloudPcProvisioningPolicy-id')->get($requestConfiguration);


```