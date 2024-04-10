---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OpenTypeExtension;


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

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->extensions()->post($requestBody)->wait();

```