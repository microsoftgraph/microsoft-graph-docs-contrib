---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailAssessmentRequest();
$requestBody->setOdataType('#microsoft.graph.mailAssessmentRequest');

$requestBody->setRecipientEmail('tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('spam'));

$requestBody->setMessageUri('https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=');



$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```