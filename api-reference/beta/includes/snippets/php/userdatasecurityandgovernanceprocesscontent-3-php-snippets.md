---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\DataSecurityAndGovernance\ProcessContent\ProcessContentPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentRequest;
use Microsoft\Graph\Beta\Generated\Models\ProcessContentMetadataBase;
use Microsoft\Graph\Beta\Generated\Models\ProcessConversationMetadata;
use Microsoft\Graph\Beta\Generated\Models\BinaryContent;
use Microsoft\Graph\Beta\Generated\Models\ActivityMetadata;
use Microsoft\Graph\Beta\Generated\Models\UserActivityType;
use Microsoft\Graph\Beta\Generated\Models\IntegratedApplicationMetadata;
use Microsoft\Graph\Beta\Generated\Models\ProtectedApplicationMetadata;
use Microsoft\Graph\Beta\Generated\Models\PolicyLocationUrl;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProcessContentPostRequestBody();
$contentToProcess = new ProcessContentRequest();
$contentEntriesProcessContentMetadataBase1 = new ProcessConversationMetadata();
$contentEntriesProcessContentMetadataBase1->setOdataType('#microsoft.graph.processConversationMetadata');
$contentEntriesProcessContentMetadataBase1->setIdentifier('f7af180f-dc2e-467c-9719-757e1c61eabf');
$contentEntriesProcessContentMetadataBase1Content = new BinaryContent();
$contentEntriesProcessContentMetadataBase1Content->setOdataType('#microsoft.graph.binaryContent');
$contentEntriesProcessContentMetadataBase1Content->setData(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('Base64 encoded content')));
$contentEntriesProcessContentMetadataBase1->setContent($contentEntriesProcessContentMetadataBase1Content);
$contentEntriesProcessContentMetadataBase1->setName('Some name');
$contentEntriesProcessContentMetadataBase1->setCorrelationId('d63eafd2-e3a9-4c1a-b726-a2e9b9d95822');
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentToProcess->setContentEntries($contentEntriesArray);

$contentToProcessActivityMetadata = new ActivityMetadata();
$contentToProcessActivityMetadata->setActivity(new UserActivityType('uploadFile'));
$contentToProcess->setActivityMetadata($contentToProcessActivityMetadata);
$contentToProcessIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentToProcessIntegratedAppMetadata->setName('Some integrated app name');
$contentToProcessIntegratedAppMetadata->setVersion('1.0.0');
$contentToProcess->setIntegratedAppMetadata($contentToProcessIntegratedAppMetadata);
$contentToProcessProtectedAppMetadata = new ProtectedApplicationMetadata();
$contentToProcessProtectedAppMetadataApplicationLocation = new PolicyLocationUrl();
$contentToProcessProtectedAppMetadataApplicationLocation->setOdataType('#microsoft.graph.policyLocationUrl');
$contentToProcessProtectedAppMetadataApplicationLocation->setValue('https://gemini.google.com');
$contentToProcessProtectedAppMetadata->setApplicationLocation($contentToProcessProtectedAppMetadataApplicationLocation);
$contentToProcess->setProtectedAppMetadata($contentToProcessProtectedAppMetadata);
$additionalData = [
'deviceMetadata' => [
	'deviceType' => 'Unmanaged',
	'ipAddress' => null,
	'operatingSystemSpecifications' => [
		'operatingSystemPlatform' => 'Windows',
		'operatingSystemVersion' => '11.1',
	],
],
];
$contentToProcess->setAdditionalData($additionalData);
$requestBody->setContentToProcess($contentToProcess);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->processContent()->post($requestBody)->wait();

```