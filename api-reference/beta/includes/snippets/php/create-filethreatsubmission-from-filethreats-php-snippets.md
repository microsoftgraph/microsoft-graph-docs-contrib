---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\FileContentThreatSubmission;
use Microsoft\Graph\Beta\Generated\Models\Security\SubmissionCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileContentThreatSubmission();
$requestBody->setOdataType('#microsoft.graph.security.fileContentThreatSubmission');
$requestBody->setCategory(new SubmissionCategory('malware'));
$requestBody->setFileName('test.html');
$requestBody->setFileContent('UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....');

$result = $graphServiceClient->security()->threatSubmission()->fileThreats()->post($requestBody)->wait();

```