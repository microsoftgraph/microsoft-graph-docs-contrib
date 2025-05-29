---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\DataSecurityAndGovernance\ProcessContent\ProcessContentPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentRequest;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentMetadataBase;
use Microsoft\Graph\Beta\Generated\Models\ContentBase;
use Microsoft\Graph\Beta\Generated\Models\ActivityMetadata;
use Microsoft\Graph\Beta\Generated\Models\UserActivityType;
use Microsoft\Graph\Beta\Generated\Models\IntegratedApplicationMetadata;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProcessContentPostRequestBody();
$contentToProcess = new ProcessContentRequest();
$contentEntriesProcessContentMetadataBase1 = new ProcessContentMetadataBase();
$contentEntriesProcessContentMetadataBase1->setOdataType('microsoft.graph.processFileMetadata');
$contentEntriesProcessContentMetadataBase1->setIdentifier('91e1ca70-6e5b-4120-abf0-472034ba05c3');
$contentEntriesProcessContentMetadataBase1Content = new ContentBase();
$contentEntriesProcessContentMetadataBase1Content->setOdataType('microsoft.graph.binaryContent');
$additionalData = [
	'data' => '<some-binary-data>',
];
$contentEntriesProcessContentMetadataBase1Content->setAdditionalData($additionalData);
$contentEntriesProcessContentMetadataBase1->setContent($contentEntriesProcessContentMetadataBase1Content);
$contentEntriesProcessContentMetadataBase1->setName('Example.docx');
$contentEntriesProcessContentMetadataBase1->setCreatedDateTime(new \DateTime('2024-07-23T01:31:40.2020463Z'));
$contentEntriesProcessContentMetadataBase1->setCorrelationId('54689');
$contentEntriesProcessContentMetadataBase1->setSequenceNumber(1);
$contentEntriesProcessContentMetadataBase1->setLength(17352);
$contentEntriesProcessContentMetadataBase1->setIsTruncated(false);
$additionalData = [
	'updatedDateTime' => '2024-09-17T13:45:21.0000000Z',
	'ownerId' => 'ffe1ca70-6e5b-4120-abf0-472034ba05d4',
	'customProperties' => [
		'department' => 'Finance',
		'reviewerName' => 'John Smith',
	],
];
$contentEntriesProcessContentMetadataBase1->setAdditionalData($additionalData);
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentToProcess->setContentEntries($contentEntriesArray);

$contentToProcessActivityMetadata = new ActivityMetadata();
$contentToProcessActivityMetadata->setActivity(new UserActivityType('uploadFile'));
$additionalData = [
'applicationLocation' => 'bing.com',
];
$contentToProcessActivityMetadata->setAdditionalData($additionalData);
$contentToProcess->setActivityMetadata($contentToProcessActivityMetadata);
$contentToProcessIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentToProcessIntegratedAppMetadata->setName('ContosoIsvApplication');
$contentToProcessIntegratedAppMetadata->setVersion('1.2');
$contentToProcess->setIntegratedAppMetadata($contentToProcessIntegratedAppMetadata);
$additionalData = [
'deviceMetadata' => [
	'deviceType' => 'unmanaged',
	'operatingSystemSpecifications' => [
		'operatingSystemPlatform' => 'windows',
		'operatingSystemVersion' => '10.0.2.4',
	],
],
];
$contentToProcess->setAdditionalData($additionalData);
$requestBody->setContentToProcess($contentToProcess);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->processContent()->post($requestBody)->wait();

```