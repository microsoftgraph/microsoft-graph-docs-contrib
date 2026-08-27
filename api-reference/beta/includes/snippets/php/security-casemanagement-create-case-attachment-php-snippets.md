---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\Attachment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Attachment();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.attachment');
$requestBody->setDisplayName('Case MS-001 Attachment');
$requestBody->setDescription('Screenshot of suspicious sign-in activity');
$requestBody->setFileSize(1000);
$requestBody->setFileExtension('jpeg');

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->attachments()->post($requestBody)->wait();

```