---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Alert;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertSeverity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setOdataType('#microsoft.graph.security.manualAlert');
$requestBody->setTitle('Malicious file detected on device');
$requestBody->setDescription('Sandbox analysis revealed malicious behavior in downloaded file.');
$requestBody->setCategory('Execution');
$requestBody->setSeverity(new AlertSeverity('high'));
$requestBody->setRecommendedActions('Isolate device, remove file, scan for additional IOCs');
$additionalData = [
	'linkToIncident' => 28282,
	'entityDefinitions' => [
			[
				'entityType' => 'file',
				'entityIdentifier' => 'sha256',
				'identifierValue' => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
				'role' => 'related',
			],
			[
				'entityType' => 'device',
				'entityIdentifier' => 'deviceName',
				'identifierValue' => 'DESKTOP-VICTIM01',
				'role' => 'impacted',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->alerts_v2()->post($requestBody)->wait();

```