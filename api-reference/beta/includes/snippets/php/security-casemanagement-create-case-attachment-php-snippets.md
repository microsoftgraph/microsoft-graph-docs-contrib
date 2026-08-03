---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\Attachment;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\AttachmentScanResult;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\AttachmentOrigin;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\AttachmentOriginType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Attachment();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.attachment');
$requestBody->setDisplayName('Case MS-001 Attachment');
$requestBody->setDescription('Screenshot of suspicious sign-in activity');
$requestBody->setFileSize(1000);
$requestBody->setFileExtension('jpeg');
$requestBody->setScanResult(new AttachmentScanResult('noThreatsFound'));
$origin = new AttachmentOrigin();
$origin->setOdataType('microsoft.graph.security.caseManagement.attachmentOrigin');
$origin->setResourceId('987757fb-6ef4-1061-17e7-9de0d088e1dd');
$origin->setResourceType(new AttachmentOriginType('case'));
$requestBody->setOrigin($origin);

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->attachments()->post($requestBody)->wait();

```