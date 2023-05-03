---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ThreatAssessmentRequest();
$requestBody->set@odatatype('#microsoft.graph.urlAssessmentRequest');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('phishing'));

$additionalData = [
		'url' => 'http://test.com', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```