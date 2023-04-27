---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomQuestion();
$additionalData = [
		'@odata.type' => '#microsoft.graph.bookingCustomQuestion', 
		'displayName' => 'What is your age?', 
		'answerInputType' => 'text', 
		'answerOptions' => [],
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->bookingBusinessesById('bookingBusiness-id')->customQuestionsById('bookingCustomQuestion-id')->post($requestBody);


```