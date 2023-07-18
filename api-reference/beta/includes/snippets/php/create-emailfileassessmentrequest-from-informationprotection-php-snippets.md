---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailFileAssessmentRequest();
$requestBody->setOdataType('#microsoft.graph.emailFileAssessmentRequest');

$requestBody->setRecipientEmail('tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('malware'));

$requestBody->setContentData('UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....');



$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```