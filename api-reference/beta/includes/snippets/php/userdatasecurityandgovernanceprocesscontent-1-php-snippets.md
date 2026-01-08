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
use Microsoft\Graph\Beta\Generated\Models\TextContent;
use Microsoft\Graph\Beta\Generated\Models\ActivityMetadata;
use Microsoft\Graph\Beta\Generated\Models\UserActivityType;
use Microsoft\Graph\Beta\Generated\Models\DeviceMetadata;
use Microsoft\Graph\Beta\Generated\Models\OperatingSystemSpecifications;
use Microsoft\Graph\Beta\Generated\Models\ProtectedApplicationMetadata;
use Microsoft\Graph\Beta\Generated\Models\PolicyLocationApplication;
use Microsoft\Graph\Beta\Generated\Models\IntegratedApplicationMetadata;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProcessContentPostRequestBody();
$contentToProcess = new ProcessContentRequest();
$contentEntriesProcessContentMetadataBase1 = new ProcessConversationMetadata();
$contentEntriesProcessContentMetadataBase1->setOdataType('microsoft.graph.processConversationMetadata');
$contentEntriesProcessContentMetadataBase1->setIdentifier('07785517-9081-4fe7-a9dc-85bcdf5e9075');
$contentEntriesProcessContentMetadataBase1Content = new TextContent();
$contentEntriesProcessContentMetadataBase1Content->setOdataType('microsoft.graph.textContent');
$contentEntriesProcessContentMetadataBase1Content->setData('Write an acceptance letter for Alex Wilber with Credit card number 4532667785213500, ssn: 120-98-1437 at One Microsoft Way, Redmond, WA 98052');
$contentEntriesProcessContentMetadataBase1->setContent($contentEntriesProcessContentMetadataBase1Content);
$contentEntriesProcessContentMetadataBase1->setName('PC Purview API Explorer message');
$contentEntriesProcessContentMetadataBase1->setCorrelationId('d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d');
$contentEntriesProcessContentMetadataBase1->setSequenceNumber(0);
$contentEntriesProcessContentMetadataBase1->setIsTruncated(false);
$contentEntriesProcessContentMetadataBase1->setCreatedDateTime(new \DateTime('2025-05-27T17:23:20'));
$contentEntriesProcessContentMetadataBase1->setModifiedDateTime(new \DateTime('2025-05-27T17:23:20'));
$contentEntriesArray []= $contentEntriesProcessContentMetadataBase1;
$contentToProcess->setContentEntries($contentEntriesArray);

$contentToProcessActivityMetadata = new ActivityMetadata();
$contentToProcessActivityMetadata->setActivity(new UserActivityType('uploadText'));
$contentToProcess->setActivityMetadata($contentToProcessActivityMetadata);
$contentToProcessDeviceMetadata = new DeviceMetadata();
$contentToProcessDeviceMetadata->setDeviceType('Unmanaged');
$contentToProcessDeviceMetadataOperatingSystemSpecifications = new OperatingSystemSpecifications();
$contentToProcessDeviceMetadataOperatingSystemSpecifications->setOperatingSystemPlatform('Windows 11');
$contentToProcessDeviceMetadataOperatingSystemSpecifications->setOperatingSystemVersion('10.0.26100.0');
$contentToProcessDeviceMetadata->setOperatingSystemSpecifications($contentToProcessDeviceMetadataOperatingSystemSpecifications);
$contentToProcessDeviceMetadata->setIpAddress('127.0.0.1');
$contentToProcess->setDeviceMetadata($contentToProcessDeviceMetadata);
$contentToProcessProtectedAppMetadata = new ProtectedApplicationMetadata();
$contentToProcessProtectedAppMetadata->setName('PC Purview API Explorer');
$contentToProcessProtectedAppMetadata->setVersion('0.2');
$contentToProcessProtectedAppMetadataApplicationLocation = new PolicyLocationApplication();
$contentToProcessProtectedAppMetadataApplicationLocation->setOdataType('microsoft.graph.policyLocationApplication');
$contentToProcessProtectedAppMetadataApplicationLocation->setValue('83ef208a-0396-4893-9d4f-d36efbffc8bd');
$contentToProcessProtectedAppMetadata->setApplicationLocation($contentToProcessProtectedAppMetadataApplicationLocation);
$contentToProcess->setProtectedAppMetadata($contentToProcessProtectedAppMetadata);
$contentToProcessIntegratedAppMetadata = new IntegratedApplicationMetadata();
$contentToProcessIntegratedAppMetadata->setName('PC Purview API Explorer');
$contentToProcessIntegratedAppMetadata->setVersion('0.2');
$contentToProcess->setIntegratedAppMetadata($contentToProcessIntegratedAppMetadata);
$requestBody->setContentToProcess($contentToProcess);

$result = $graphServiceClient->me()->dataSecurityAndGovernance()->processContent()->post($requestBody)->wait();

```