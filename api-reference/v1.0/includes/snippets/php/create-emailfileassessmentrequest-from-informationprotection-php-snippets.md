---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ThreatAssessmentRequest();
$requestBody->set@odatatype('#microsoft.graph.emailFileAssessmentRequest');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('malware'));

$additionalData = [
		'recipientEmail' => 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com', 
		'contentData' => 'UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```