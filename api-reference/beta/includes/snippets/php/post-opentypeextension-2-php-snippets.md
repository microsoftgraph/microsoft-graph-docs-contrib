---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenTypeExtension();
$requestBody->setOdataType('microsoft.graph.openTypeExtension');

$requestBody->setExtensionName('Com.Contoso.Referral');

$additionalData = [
		'companyName' => 'Wingtip Toys', 
		'dealValue' => 500050,
		'expirationDate' => '2015-12-03T10:00:00.000Z', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->extensions()->post($requestBody);


```