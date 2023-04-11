---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ThreatAssessmentRequest();
$requestBody->set@odatatype('#microsoft.graph.mailAssessmentRequest');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('spam'));

$additionalData = [
		'recipientEmail' => 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com', 
		'messageUri' => 'https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```