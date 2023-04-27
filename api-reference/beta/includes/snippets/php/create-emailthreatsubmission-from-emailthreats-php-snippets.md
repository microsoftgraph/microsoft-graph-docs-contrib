---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EmailThreatSubmission();
$requestBody->set@odatatype('#microsoft.graph.emailUrlThreatSubmission');

$requestBody->setCategory(new SubmissionCategory('spam'));

$requestBody->setRecipientEmailAddress('tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com');

$additionalData = [
		'messageUrl' => 'https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->threatSubmission()->emailThreats()->post($requestBody);


```