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
$contentEntriesProcessContentMetadataBase1->setIdentifier('d6ab5054-e111-45c3-9fba-9f2a59c9bbf8');
$contentEntriesProcessContentMetadataBase1->setName('CA Purview API Explorer message');
$contentEntriesProcessContentMetadataBase1->setCorrelationId('edfb7f88-b963-4ef2-8b30-5cb90f80e01e');
$contentEntriesProcessContentMetadataBase1->setSequenceNumber(0);
$contentEntriesProcessContentMetadataBase1->setIsTruncated(false);
$contentEntriesProcessContentMetadataBase1->setCreatedDateTime(new \DateTime('2025-05-28T20:20:37'));
$contentEntriesProcessContentMetadataBase1->setModifiedDateTime(new \DateTime('2025-05-28T20:20:37'));
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentMetadata->setContentEntries($contentEntriesArray);

$contentMetadataActivityMetadata = new ActivityMetadata();
$contentMetadataActivityMetadata->setActivity(new UserActivityType('downloadText'));
$contentMetadata->setActivityMetadata($contentMetadataActivityMetadata);
$contentMetadataIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentMetadataIntegratedAppMetadata->setName('CA Purview API Explorer');
$contentMetadataIntegratedAppMetadata->setVersion('0.1');
$contentMetadata->setIntegratedAppMetadata($contentMetadataIntegratedAppMetadata);
$additionalData = [
'deviceMetadata' => [
	'operatingSystemSpecifications' => [
		'operatingSystemPlatform' => 'Windows 11',
		'operatingSystemVersion' => '10.0.26100.0',
	],
],
'userId' => '7c497f10-cba8-4a8d-9449-db4b76d1ef80',
'scopeIdentifier' => '0',
];
$contentMetadata->setAdditionalData($additionalData);
$requestBody->setContentMetadata($contentMetadata);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->activities()->contentActivities()->post($requestBody)->wait();

```