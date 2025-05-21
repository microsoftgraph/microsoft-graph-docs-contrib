---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ContentActivity;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentRequest;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentMetadataBase;
use Microsoft\Graph\Beta\Generated\Models\ProcessConversationMetadata;
use Microsoft\Graph\Beta\Generated\Models\ActivityMetadata;
use Microsoft\Graph\Beta\Generated\Models\UserActivityType;
use Microsoft\Graph\Beta\Generated\Models\IntegratedApplicationMetadata;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContentActivity();
$contentMetadata = new ProcessContentRequest();
$contentEntriesProcessContentMetadataBase1 = new ProcessConversationMetadata();
$contentEntriesProcessContentMetadataBase1->setOdataType('microsoft.graph.processConversationMetadata');
$contentEntriesProcessContentMetadataBase1->setIdentifier('68fa951a-898a-4427-8e9e-6f8c05e9fe2b');
$contentEntriesProcessContentMetadataBase1->setName('API Explorer message');
$contentEntriesProcessContentMetadataBase1->setCorrelationId('559a2343-7aa2-4912-93fe-72c47b2706ed');
$contentEntriesProcessContentMetadataBase1->setIsTruncated(false);
$contentEntriesProcessContentMetadataBase1->setCreatedDateTime(new \DateTime('2025-04-28T20:17:55'));
$contentEntriesProcessContentMetadataBase1->setModifiedDateTime(new \DateTime('2025-04-28T20:17:55'));
$additionalData = [
	'sequenceNo' => 0,
];
$contentEntriesProcessContentMetadataBase1->setAdditionalData($additionalData);
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentMetadata->setContentEntries($contentEntriesArray);

$contentMetadataActivityMetadata = new ActivityMetadata();
$contentMetadataActivityMetadata->setActivity(new UserActivityType('uploadText'));
$contentMetadata->setActivityMetadata($contentMetadataActivityMetadata);
$contentMetadataIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentMetadataIntegratedAppMetadata->setName('API Explorer');
$contentMetadataIntegratedAppMetadata->setVersion('0.1');
$contentMetadata->setIntegratedAppMetadata($contentMetadataIntegratedAppMetadata);
$additionalData = [
'deviceMetadata' => [
	'deviceType' => 'unmanaged',
	'operatingSystemSpecifications' => [
		'operatingSystemPlatform' => 'Windows 11',
		'operatingSystemVersion' => '10.0.26100.0',
	],
],
'userId' => '7c2f8f10-cba8-4a8d-9449-db4b76d17390',
'scopeIdentifier' => '0',
];
$contentMetadata->setAdditionalData($additionalData);
$requestBody->setContentMetadata($contentMetadata);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->activities()->contentActivities()->post($requestBody)->wait();

```