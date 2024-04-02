---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackage();
$requestBody->setDisplayName('Marketing Campaign');
$requestBody->setDescription('Access to resources for the campaign');
$additionalData = [
	'catalogId' => 'cec5d6ab-c75d-47c0-9c1c-92e89f66e384',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->post($requestBody)->wait();

```