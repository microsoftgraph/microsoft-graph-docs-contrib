---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\DataSecurityAndGovernance\ProcessContent\ProcessContentPostRequestBody;
use Microsoft\Graph\Generated\Models\ProcessContentRequest;
use Microsoft\Graph\Generated\Models\ProcessContentMetadataBase;
use Microsoft\Graph\Generated\Models\ProcessConversationMetadata;
use Microsoft\Graph\Generated\Models\TextContent;
use Microsoft\Graph\Generated\Models\ActivityMetadata;
use Microsoft\Graph\Generated\Models\UserActivityType;
use Microsoft\Graph\Generated\Models\DeviceMetadata;
use Microsoft\Graph\Generated\Models\OperatingSystemSpecifications;
use Microsoft\Graph\Generated\Models\IntegratedApplicationMetadata;
use Microsoft\Graph\Generated\Models\ProtectedApplicationMetadata;
use Microsoft\Graph\Generated\Models\PolicyLocationUrl;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProcessContentPostRequestBody();
$contentToProcess = new ProcessContentRequest();
$contentEntriesProcessContentMetadataBase1 = new ProcessConversationMetadata();
$contentEntriesProcessContentMetadataBase1->setOdataType('#microsoft.graph.processConversationMetadata');
$contentEntriesProcessContentMetadataBase1->setIdentifier('f7af180f-dc2e-467c-9719-757e1c61eabf');
$contentEntriesProcessContentMetadataBase1Content = new TextContent();
$contentEntriesProcessContentMetadataBase1Content->setOdataType('#microsoft.graph.textContent');
$contentEntriesProcessContentMetadataBase1Content->setData('some data');
$contentEntriesProcessContentMetadataBase1->setContent($contentEntriesProcessContentMetadataBase1Content);
$contentEntriesProcessContentMetadataBase1->setCorrelationId('d63eafd2-e3a9-4c1a-b726-a2e9b9d95811');
$contentEntriesProcessContentMetadataBase1->setSequenceNumber(0);
$contentEntriesProcessContentMetadataBase1->setName('Test Content');
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentToProcess->setContentEntries($contentEntriesArray);

$contentToProcessActivityMetadata = new ActivityMetadata();
$contentToProcessActivityMetadata->setActivity(new UserActivityType('uploadText'));
$contentToProcess->setActivityMetadata($contentToProcessActivityMetadata);
$contentToProcessDeviceMetadata = new DeviceMetadata();
$contentToProcessDeviceMetadata->setDeviceType('unmanaged');
$contentToProcessDeviceMetadata->setIpAddress(null);
$contentToProcessDeviceMetadataOperatingSystemSpecifications = new OperatingSystemSpecifications();
$contentToProcessDeviceMetadataOperatingSystemSpecifications->setOperatingSystemPlatform('Windows');
$contentToProcessDeviceMetadataOperatingSystemSpecifications->setOperatingSystemVersion('11.1');
$contentToProcessDeviceMetadata->setOperatingSystemSpecifications($contentToProcessDeviceMetadataOperatingSystemSpecifications);
$contentToProcess->setDeviceMetadata($contentToProcessDeviceMetadata);
$contentToProcessIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentToProcessIntegratedAppMetadata->setName('My Entra App');
$contentToProcessIntegratedAppMetadata->setVersion('0.1');
$contentToProcess->setIntegratedAppMetadata($contentToProcessIntegratedAppMetadata);
$contentToProcessProtectedAppMetadata = new ProtectedApplicationMetadata();
$contentToProcessProtectedAppMetadata->setName('My Entra App');
$contentToProcessProtectedAppMetadata->setVersion('0.1');
$contentToProcessProtectedAppMetadataApplicationLocation = new PolicyLocationUrl();
$contentToProcessProtectedAppMetadataApplicationLocation->setOdataType('#microsoft.graph.policyLocationUrl');
$contentToProcessProtectedAppMetadataApplicationLocation->setValue('https://gemini.google.com');
$contentToProcessProtectedAppMetadata->setApplicationLocation($contentToProcessProtectedAppMetadataApplicationLocation);
$contentToProcess->setProtectedAppMetadata($contentToProcessProtectedAppMetadata);
$requestBody->setContentToProcess($contentToProcess);

$result = $graphServiceClient->users()->byUserId('user-id')->dataSecurityAndGovernance()->processContent()->post($requestBody)->wait();

```