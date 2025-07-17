---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OneDriveForBusinessRestoreSession;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneDriveForBusinessRestoreSession();
$additionalData = [
	'driveRestoreArtifacts@delta' => [
			[
				'restorePoint' => [
					'id' => '1b014d8c-71fe-4d00-a01a-31850bc5b32c',
				],
				'destinationType' => 'new',
			],
			[
				'restorePoint' => [
					'id' => '2b014d8c-71fe-4d00-a01a-31850bc5b32',
				],
				'destinationType' => 'new',
			],
			[
				'restorePoint' => [
					'id' => '3b014d8c-71fe-4d00-a01a-31850bc5b32c',
				],
				'destinationType' => 'new',
			],
			[
				'restorePoint' => [
					'id' => '4b014d8c-71fe-4d00-a01a-31850bc5b32c',
				],
				'destinationType' => 'new',
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
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '3667e382-71a9-4c07-bef7-bda97e09c0d2',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessRestoreSessions()->byOneDriveForBusinessRestoreSessionId('oneDriveForBusinessRestoreSession-id')->patch($requestBody)->wait();

```