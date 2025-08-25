---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\DataSecurityAndGovernance\ProcessContent\ProcessContentPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentRequest;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentMetadataBase;
use Microsoft\Graph\Beta\Generated\Models\ProcessFileMetadata;
use Microsoft\Graph\Beta\Generated\Models\TextContent;
use Microsoft\Graph\Beta\Generated\Models\CustomMetadataDictionary;
use Microsoft\Graph\Beta\Generated\Models\ActivityMetadata;
use Microsoft\Graph\Beta\Generated\Models\UserActivityType;
use Microsoft\Graph\Beta\Generated\Models\DeviceMetadata;
use Microsoft\Graph\Beta\Generated\Models\OperatingSystemSpecifications;
use Microsoft\Graph\Beta\Generated\Models\IntegratedApplicationMetadata;
use Microsoft\Graph\Beta\Generated\Models\ProtectedApplicationMetadata;
use Microsoft\Graph\Beta\Generated\Models\PolicyLocationUrl;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProcessContentPostRequestBody();
$contentToProcess = new ProcessContentRequest();
$contentEntriesProcessContentMetadataBase1 = new ProcessFileMetadata();
$contentEntriesProcessContentMetadataBase1->setOdataType('#microsoft.graph.processFileMetadata');
$contentEntriesProcessContentMetadataBase1->setIdentifier('f7af180f-dc2e-467c-9719-757e1c61eabf');
$contentEntriesProcessContentMetadataBase1Content = new TextContent();
$contentEntriesProcessContentMetadataBase1Content->setOdataType('#microsoft.graph.textContent');
$contentEntriesProcessContentMetadataBase1Content->setData('Base64 encoded content');
$contentEntriesProcessContentMetadataBase1->setContent($contentEntriesProcessContentMetadataBase1Content);
$contentEntriesProcessContentMetadataBase1->setName('Test File.docx');
$contentEntriesProcessContentMetadataBase1->setCorrelationId('d63eafd2-e3a9-4c1a-b726-a2e9b9d95822');
$contentEntriesProcessContentMetadataBase1->setCreatedDateTime(new \DateTime('2024-07-23T01:31:40.2020463Z'));
$contentEntriesProcessContentMetadataBase1->setModifiedDateTime(new \DateTime('2024-09-17T13:45:21.0000000Z'));
$contentEntriesProcessContentMetadataBase1->setCorrelationId('9d84223c-521c-42f4-8f35-3cdeabe515d3');
$contentEntriesProcessContentMetadataBase1->setLength(17352);
$contentEntriesProcessContentMetadataBase1->setIsTruncated(false);
$contentEntriesProcessContentMetadataBase1->setOwnerId('ffe1ca70-6e5b-4120-abf0-472034ba05d4');
$contentEntriesProcessContentMetadataBase1CustomProperties = new CustomMetadataDictionary();
$additionalData = [
	'Department' => 'Finance',
	'ReviewerName' => 'John Smith',
];
$contentEntriesProcessContentMetadataBase1CustomProperties->setAdditionalData($additionalData);
$contentEntriesProcessContentMetadataBase1->setCustomProperties($contentEntriesProcessContentMetadataBase1CustomProperties);
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentToProcess->setContentEntries($contentEntriesArray);

$contentToProcessActivityMetadata = new ActivityMetadata();
$contentToProcessActivityMetadata->setActivity(new UserActivityType('uploadFile'));
$contentToProcess->setActivityMetadata($contentToProcessActivityMetadata);
$contentToProcessDeviceMetadata = new DeviceMetadata();
$contentToProcessDeviceMetadata->setDeviceType('unmanaged');
$contentToProcessDeviceMetadataOperatingSystemSpecifications = new OperatingSystemSpecifications();
$contentToProcessDeviceMetadataOperatingSystemSpecifications->setOperatingSystemPlatform('Windows');
$contentToProcessDeviceMetadataOperatingSystemSpecifications->setOperatingSystemVersion('11.1');
$contentToProcessDeviceMetadata->setOperatingSystemSpecifications($contentToProcessDeviceMetadataOperatingSystemSpecifications);
$contentToProcess->setDeviceMetadata($contentToProcessDeviceMetadata);
$contentToProcessIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentToProcessIntegratedAppMetadata->setName('Network Proxy App');
$contentToProcessIntegratedAppMetadata->setVersion('1.0.0');
$contentToProcess->setIntegratedAppMetadata($contentToProcessIntegratedAppMetadata);
$contentToProcessProtectedAppMetadata = new ProtectedApplicationMetadata();
$contentToProcessProtectedAppMetadata->setName('My App');
$contentToProcessProtectedAppMetadata->setVersion('0.1');
$contentToProcessProtectedAppMetadataApplicationLocation = new PolicyLocationUrl();
$contentToProcessProtectedAppMetadataApplicationLocation->setOdataType('#microsoft.graph.policyLocationUrl');
$contentToProcessProtectedAppMetadataApplicationLocation->setValue('https://gemini.google.com');
$contentToProcessProtectedAppMetadata->setApplicationLocation($contentToProcessProtectedAppMetadataApplicationLocation);
$contentToProcess->setProtectedAppMetadata($contentToProcessProtectedAppMetadata);
$requestBody->setContentToProcess($contentToProcess);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->processContent()->post($requestBody)->wait();

```