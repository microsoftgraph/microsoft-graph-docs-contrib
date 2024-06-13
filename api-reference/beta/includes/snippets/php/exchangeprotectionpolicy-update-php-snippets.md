---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\ExchangeProtectionPolicies\Item\ExchangeProtectionPolicyItemRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\ExchangeProtectionPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeProtectionPolicy();
$requestBody->setDisplayName('Exchange Policy - Inadvertent data loss');
$additionalData = [
	'mailboxProtectionUnits@delta' => [
			[
				'userId' => '1b014d8c-71fe-4d00-a01a-31850bc5b32c',
			],
			[
				'userId' => '2b014d8c-71fe-4d00-a01a-31850bc5b32c',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '99954f18-c8ec-4b62-85bf-cdf3b70b140e',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '4267e382-71a9-4c07-bef7-bda97e09c0d2',
			],
		],
];
$requestBody->setAdditionalData($additionalData);
$requestConfiguration = new ExchangeProtectionPolicyItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <Access-Token>',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->solutions()->backupRestore()->exchangeProtectionPolicies()->byExchangeProtectionPolicyId('exchangeProtectionPolicy-id')->patch($requestBody, $requestConfiguration)->wait();

```