---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExchangeRestoreSession;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeRestoreSession();
$requestBody->setOdataType('#microsoft.graph.exchangeRestoreSession');
$additionalData = [
	'granularMailboxRestoreArtifacts' => [
			[
				'restorePoint' => [
					'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888279',
				],
				'destinationType' => 'inPlace',
				'searchResponseId' => 'M2UyZDAwMDAwMDMxMzkzYTMyNj',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->backupRestore()->exchangeRestoreSessions()->post($requestBody)->wait();

```