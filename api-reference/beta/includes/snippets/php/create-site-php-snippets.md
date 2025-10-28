---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Site;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Site();
$requestBody->setName('Communication Site Test');
$requestBody->setWebUrl('https://contoso.sharepoint.com/sites/commsite1');
$requestBody->setDescription('Test Site Description');
$additionalData = [
	'locale' => 'en-US',
	'shareByEmailEnabled' => false,
	'template' => 'sitepagepublishing',
	'ownerIdentityToResolve' => [
		'email' => 'ryan@contoso.com',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->sites()->post($requestBody)->wait();

```