---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ThreatAssessmentRequest();
$requestBody->set@odatatype('#microsoft.graph.fileAssessmentRequest');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('malware'));

$additionalData = [
		'fileName' => 'test.txt', 
		'contentData' => 'VGhpcyBpcyBhIHRlc3QgZmlsZQ==', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```