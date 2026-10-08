---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ContentActivity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContentActivity();
$additionalData = [
	'contentToProcess' => [
		'contentEntries' => [
				[
					'@odata.type' => 'microsoft.graph.processConversationMetadata',
					'identifier' => '07785517-9081-4fe7-a9dc-85bcdf5e9075',
					'name' => 'PC Purview API Explorer message',
					'correlationId' => 'd63eafd2-e3a9-4c1a-b726-a2e9b9d9580d',
					'sequenceNumber' => 0,
					'isTruncated' => false,
					'createdDateTime' => '2025-05-27T17:23:20',
					'modifiedDateTime' => '2025-05-27T17:23:20',
				],
			],
		'activityMetadata' => [
			'activity' => 'uploadText',
		],
		'deviceMetadata' => [
			'operatingSystemSpecifications' => [
				'operatingSystemPlatform' => 'Windows 11',
				'operatingSystemVersion' => '10.0.26100.0',
			],
			'ipAddress' => '127.0.0.1',
		],
		'protectedAppMetadata' => [
			'name' => 'PC Purview API Explorer',
			'version' => '0.2',
			'applicationLocation' => [
				'@odata.type' => 'microsoft.graph.policyLocationApplication',
				'value' => '83ef208a-0396-4893-9d4f-d36efbffc8bd',
			],
		],
		'integratedAppMetadata' => [
			'name' => 'PC Purview API Explorer',
			'version' => '0.2',
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->activities()->contentActivities()->post($requestBody)->wait();

```