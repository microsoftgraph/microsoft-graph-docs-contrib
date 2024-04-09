---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CustomAppScope;
use Microsoft\Graph\Generated\Models\CustomAppScopeAttributesDictionary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomAppScope();
$customAttributes = new CustomAppScopeAttributesDictionary();
$additionalData = [
	'RecipientFilter' => 'City -eq \'Seattle\'',
];
$customAttributes->setAdditionalData($additionalData);
$requestBody->setCustomAttributes($customAttributes);

$result = $graphServiceClient->roleManagement()->exchange()->customAppScopes()->byCustomAppScopeId('customAppScope-id')->patch($requestBody)->wait();

```