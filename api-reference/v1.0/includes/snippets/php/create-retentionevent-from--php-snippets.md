---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionEvent();
$requestBody->setOdataType('#microsoft.graph.security.retentionEvent');

$requestBody->setDisplayName('String');

$requestBody->setDescription('String');

$requestBody->setEventTriggerDateTime(new \DateTime('String (timestamp)'));

$additionalData = [
		'eventQuery' => [
				[
						'@odata.type' => 'microsoft.graph.security.eventQuery', 
				],
			],
		'retentionEventType@odata.bind' => 'https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventType/9eecef97-fb3c-4c68-825b-4dd74530863a', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->triggers()->retentionEvents()->post($requestBody);


```