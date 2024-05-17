---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FileAssessmentRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAssessmentRequest();
$requestBody->setOdataType('#microsoft.graph.fileAssessmentRequest');
$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));
$requestBody->setCategory(new ThreatCategory('malware'));
$requestBody->setFileName('test.txt');
$requestBody->setContentData('VGhpcyBpcyBhIHRlc3QgZmlsZQ==');

$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody)->wait();

```