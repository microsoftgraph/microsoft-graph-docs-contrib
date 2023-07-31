---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenTypeExtension();
$requestBody->setOdataType('microsoft.graph.openTypeExtension');

$requestBody->setExtensionName('Com.Contoso.Deal');

$additionalData = [
		'companyName' => 'Alpine Skis', 
		'dealValue' => 1010100,
		'expirationDate' => '2015-07-03T13:04:00.000Z', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->byGroupId('group-id')->events()->byEventId('event-id')->extensions()->post($requestBody);


```