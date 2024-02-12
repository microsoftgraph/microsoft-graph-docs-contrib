---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorizationPolicy();
$additionalData = [
	'guestUserRole' => '2af84b1e-32c8-42b7-82bc-daa82404023b',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->policies()->authorizationPolicy()->byAuthorizationPolicyId('authorizationPolicy-id')->patch($requestBody)->wait();

```