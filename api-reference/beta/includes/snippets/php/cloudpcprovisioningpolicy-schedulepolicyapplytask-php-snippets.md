---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ProvisioningPolicies\Item\SchedulePolicyApplyTask\SchedulePolicyApplyTaskPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SchedulePolicyApplyTaskPostRequestBody();
$additionalData = [
	'reservePercentage' => 50,
	'cronScheduleExpression' => '0 0 0 20 * *',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->schedulePolicyApplyTask()->post($requestBody)->wait();

```