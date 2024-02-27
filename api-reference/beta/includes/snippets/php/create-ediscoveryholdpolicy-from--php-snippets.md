---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryHoldPolicy();
$requestBody->setDisplayName('My legalHold with sources');
$requestBody->setDescription('Created from Graph API');
$additionalData = [
	'userSources@odata.bind' => [
			[
				'@odata.type' => 'microsoft.graph.security.userSource',
				'email' => 'SalesTeam@contoso.com',
			],
		],
	'siteSources@odata.bind' => [
			[
				'@odata.type' => 'microsoft.graph.security.siteSource',
				'site' => [
					'webUrl' => 'https://m365x809305.sharepoint.com/sites/Design-topsecret',
				],
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->legalHolds()->post($requestBody)->wait();

```