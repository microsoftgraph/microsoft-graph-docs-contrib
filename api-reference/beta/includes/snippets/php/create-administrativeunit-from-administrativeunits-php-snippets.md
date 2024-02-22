---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Seattle District Technical Schools');
$requestBody->setDescription('Seattle district technical schools administration');
$additionalData = [
	'membershipType' => 'Dynamic',
	'membershipRule' => '(user.country -eq \"United States\")',
	'membershipRuleProcessingState' => 'On',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->administrativeUnits()->post($requestBody)->wait();

```