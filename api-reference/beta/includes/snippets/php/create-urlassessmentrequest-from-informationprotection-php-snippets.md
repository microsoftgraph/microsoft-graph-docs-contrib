---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UrlAssessmentRequest;
use Microsoft\Graph\Beta\Generated\Models\ThreatExpectedAssessment;
use Microsoft\Graph\Beta\Generated\Models\ThreatCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UrlAssessmentRequest();
$requestBody->setOdataType('#microsoft.graph.urlAssessmentRequest');
$requestBody->setUrl('http://test.com');
$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));
$requestBody->setCategory(new ThreatCategory('phishing'));

$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody)->wait();

```