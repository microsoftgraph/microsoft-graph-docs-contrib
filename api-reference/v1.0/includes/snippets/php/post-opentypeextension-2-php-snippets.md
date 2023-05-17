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
		'extensionName' => 'Com.Contoso.Referral', 
		'companyName' => 'Wingtip Toys', 
		'dealValue' => 500050,
		'expirationDate' => '2015-12-03T10:00:00.000Z', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->messagesById('message-id')->extensions()->post($requestBody);


```