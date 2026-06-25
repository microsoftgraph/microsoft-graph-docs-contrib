---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ProvisioningPolicies\Item\Apply\ApplyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyPostRequestBody();
$requestBody->setReservePercentage(0);
$additionalData = [
	'isForceUserLogoffEnabled' => true,
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->apply()->post($requestBody)->wait();

```