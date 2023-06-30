---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UrlAssessmentRequest();
$requestBody->set@odatatype('#microsoft.graph.urlAssessmentRequest');

$requestBody->setUrl('http://test.com');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('phishing'));



$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```