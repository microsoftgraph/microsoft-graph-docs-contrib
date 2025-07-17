---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OneDriveForBusinessProtectionPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneDriveForBusinessProtectionPolicy();
$requestBody->setDisplayName('One Drive  Policy - Inadvertent data loss');
$additionalData = [
	'driveProtectionUnits@delta' => [
			[
				'directoryObjectId' => '1b014d8c-71fe-4d00-a01a-31850bc5b32c',
			],
			[
				'directoryObjectId' => '2b014d8c-71fe-4d00-a01a-31850bc5b32c',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '4267e382-71a9-4c07-bef7-bda97e09c0d2',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '3667e382-71a9-4c07-bef7-bda97e09c0d2',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessProtectionPolicies()->byOneDriveForBusinessProtectionPolicyId('oneDriveForBusinessProtectionPolicy-id')->patch($requestBody)->wait();

```