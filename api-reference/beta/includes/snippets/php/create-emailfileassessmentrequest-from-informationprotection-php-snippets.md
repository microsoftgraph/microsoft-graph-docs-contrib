---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EmailFileAssessmentRequest;
use Microsoft\Graph\Beta\Generated\Models\ThreatExpectedAssessment;
use Microsoft\Graph\Beta\Generated\Models\ThreatCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailFileAssessmentRequest();
$requestBody->setOdataType('#microsoft.graph.emailFileAssessmentRequest');
$requestBody->setRecipientEmail('tifc@contoso.com');
$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));
$requestBody->setCategory(new ThreatCategory('malware'));
$requestBody->setContentData('UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....');

$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody)->wait();

```