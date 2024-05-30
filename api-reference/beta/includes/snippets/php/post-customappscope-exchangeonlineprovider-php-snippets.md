---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CustomAppScope;
use Microsoft\Graph\Beta\Generated\Models\CustomAppScopeAttributesDictionary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomAppScope();
$requestBody->setType('RecipientScope');
$requestBody->setDisplayName('Protected Exec Users');
$customAttributes = new CustomAppScopeAttributesDictionary();
$additionalData = [
	'Exclusive' => false,
	'RecipientFilter' => 'Title -like \'VP*\'',
];
$customAttributes->setAdditionalData($additionalData);
$requestBody->setCustomAttributes($customAttributes);

$result = $graphServiceClient->roleManagement()->exchange()->customAppScopes()->post($requestBody)->wait();

```