---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Extension();
$requestBody->set@odatatype('microsoft.graph.openTypeExtension');

$additionalData = [
		'extensionName' => 'Com.Contoso.Deal', 
		'companyName' => 'Alpine Skis', 
		'dealValue' => 1010100,
		'expirationDate' => '2015-07-03T13:04:00.000Z', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groupsById('group-id')->eventsById('event-id')->extensions()->post($requestBody);


```