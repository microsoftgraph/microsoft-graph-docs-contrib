---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointRestoreSession;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointRestoreSession();
$additionalData = [
	'siteRestoreArtifacts@delta' => [
			[
				'restorePoint' => [
					'@odata.id' => '1b014d8c-71fe-4d00-a01a-31850bc5b32c',
				],
				'destinationType' => 'new',
			],
			[
				'restorePoint' => [
					'@odata.id' => '2b014d8c-71fe-4d00-a01a-31850bc5b32',
				],
				'destinationType' => 'new',
			],
			[
				'restorePoint' => [
					'@odata.id' => '3b014d8c-71fe-4d00-a01a-31850bc5b32c',
				],
				'destinationType' => 'new',
			],
			[
				'restorePoint' => [
					'@odata.id' => '4b014d8c-71fe-4d00-a01a-31850bc5b32c',
				],
				'destinationType' => 'new',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '959ba739-70b5-43c4-8c90-b2c22014f18a',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '959ba739-70b5-43c4-8c90-b2c22014f18b',
			],
			[
				'@removed' => [
					'reason' => 'changed',
				],
				'id' => '959ba739-70b5-43c4-8c90-b2c22014f18c',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->backupRestore()->sharePointRestoreSessions()->bySharePointRestoreSessionId('sharePointRestoreSession-id')->patch($requestBody)->wait();

```